import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:chat_gpt/src/data/client/firebase_authentication.dart';
import 'package:chat_gpt/src/data/provider/auth/remote/auth_network_data_provider.dart';

class AuthNetworkDataProviderImpl implements AuthNetworkDataProvider {
  const AuthNetworkDataProviderImpl({
    required FirebaseAuthentication firebaseAuthentication,
  }) : _firebaseAuthentication = firebaseAuthentication;

  final FirebaseAuthentication _firebaseAuthentication;

  @override
  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> logOut() async => await FirebaseAuth.instance.signOut();

  @override
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Exception('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw Exception('Wrong password provided for that user.');
      }
    }
  }

  @override
  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> sendPasswordResetEmail({
    required String email,
  }) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  bool isAuth() => FirebaseAuth.instance.currentUser != null;

  @override
  String getCurrentUID() => FirebaseAuth.instance.currentUser?.uid ?? '';

  @override
  User getCurrentUser() => FirebaseAuth.instance.currentUser!;
}
