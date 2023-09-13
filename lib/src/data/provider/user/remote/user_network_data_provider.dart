import 'package:chat_gpt/src/model/user/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class UserNetworkDataProvider {
  Future<UserModel> getUser({
    required String uid,
  });

  Future<void> createUser({
    required User user,
  });

  Future<bool> isUserInDatabase({
    required String uid,
  });

  Future<void> addNewContact({
    required String uid,
    required String currentUID,
  });

  Future<void> removeContacts({
    required List<String> uid,
    required String currentUID,
  });
}
