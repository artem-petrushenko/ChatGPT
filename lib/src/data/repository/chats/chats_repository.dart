import 'package:chat_gpt/src/model/conversation/conversation_model.dart';

abstract class ChatsRepository {
  Future<List<ConversationModel>> getChatsList({
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
