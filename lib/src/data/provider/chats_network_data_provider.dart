import 'package:chat_gpt/src/models/chat_model.dart';

abstract class ChatsNetworkDataProvider {
  Future<void> createChat({
    required String name,
    required String uid,
  });

  Future<List<ChatModel>> getChats({
    required String uid,
    required String id,
  });

  Future<void> removeChat({
    required String uid,
    required String id,
  });
}
