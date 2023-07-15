import 'package:chat_gpt/src/models/chat_model.dart';

abstract class ChatsRepository {
  Future<List<ChatModel>> getChatsList({
    required String uid,
    required String id,
  });

  Future<void> createChat({
    required String uid,
    required String name,
  });

  Future<void> removeChat({
    required String uid,
    required String id,
  });
}
