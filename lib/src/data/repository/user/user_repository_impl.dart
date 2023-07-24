import 'package:chat_gpt/src/data/provider/user/remote/user_network_data_provider.dart';
import 'package:chat_gpt/src/model/user/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:flutter/widgets.dart';

import 'package:chat_gpt/src/data/repository/user/user_repository.dart';

import 'package:chat_gpt/src/data/provider/auth/remote/auth_network_data_provider.dart';

@immutable
class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl({
    required AuthNetworkDataProvider authNetworkDataProvider,
    required UserNetworkDataProvider userNetworkDataProvider,
  })  : _authNetworkDataProvider = authNetworkDataProvider,
        _userNetworkDataProvider = userNetworkDataProvider;

  final AuthNetworkDataProvider _authNetworkDataProvider;
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
  Future<void> logOut() async => _authNetworkDataProvider.logOut();

  @override
  Future<void> createWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      _authNetworkDataProvider.createUserWithEmailAndPassword(
          email: email, password: password);

  @override
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      _authNetworkDataProvider.signInWithEmailAndPassword(
          email: email, password: password);

  @override
  bool isAuth() => _authNetworkDataProvider.isAuth();

  @override
  String getCurrentUID() => _authNetworkDataProvider.getCurrentUID();

  @override
  Future<UserModel> getUser({
    required String uid,
  }) async =>
      await _userNetworkDataProvider.getUser(uid: uid);
}
