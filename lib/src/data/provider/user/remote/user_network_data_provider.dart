import 'package:chat_gpt/src/model/user/user_model.dart';

abstract class UserNetworkDataProvider {
  Future<UserModel> getUser({
    required String uid,
  });
}
