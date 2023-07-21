import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:chat_gpt/src/data/repository/user/user_repository.dart';

import 'package:chat_gpt/src/data/provider/user_network_data_provider.dart';

import 'package:flutter/widgets.dart';

@immutable
class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl({
    required UserNetworkDataProvider userNetworkDataProvider,
  }) : _userNetworkDataProvider = userNetworkDataProvider;

  final UserNetworkDataProvider _userNetworkDataProvider;

  @override
  Future<void> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Future<void> logOut() async => _userNetworkDataProvider.logOut();

  @override
  Future<void> createWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      _userNetworkDataProvider.createUserWithEmailAndPassword(
          email: email, password: password);

  @override
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      _userNetworkDataProvider.signInWithEmailAndPassword(
          email: email, password: password);

  @override
  bool isAuth() => _userNetworkDataProvider.isAuth();

  @override
  String getCurrentUID() => _userNetworkDataProvider.getCurrentUID();
}
