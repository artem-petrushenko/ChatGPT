import 'package:chat_gpt/src/data/client/firebase_authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:chat_gpt/src/data/provider/user/remote/user_network_data_provider.dart';

class UserNetworkDataProviderImpl implements UserNetworkDataProvider {
  const UserNetworkDataProviderImpl({
    required FirebaseAuthentication firebaseAuthentication,
  }) : _firebaseAuthentication = firebaseAuthentication;

  final FirebaseAuthentication _firebaseAuthentication;

  @override
  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> logOut() async => await FirebaseAuth.instance.signOut();

  @override
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
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
  bool isAuth() => FirebaseAuth.instance.currentUser != null;

  @override
  String getCurrentUID() => FirebaseAuth.instance.currentUser?.uid ?? '';
}
