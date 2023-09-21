import 'package:firebase_auth/firebase_auth.dart';

import 'package:chat_gpt/src/model/user/user_model.dart';

abstract class UserRepository {
  Future<void> signInWithGoogle();

  Future<void> logOut();

  Future<void> createWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> sendPasswordResetEmail({
    required String email,
  });

  bool isAuth();

  String getCurrentUID();

  Future<UserModel> getUser({required String uid});

  Future<void> createUser({required User user});

  Future<bool> isUserInDatabase({required String uid});

  User getCurrentUser();

  Future<void> addNewContact({required String uid, required String currentUID});

  Future<void> removeContacts(
      {required List<String> uid, required String currentUID});

  Future<void> updateAvatar({
    required String uid,
    required String imageUrl,
  });
}
