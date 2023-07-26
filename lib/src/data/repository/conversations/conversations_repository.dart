import 'package:chat_gpt/src/model/conversation/conversation_model.dart';

abstract class ConversationsRepository {
  Future<List<ConversationModel>> fetchConversations({
    required String uid,
    required String id,
  });

  Future<void> createConversation({
    required String uid,
    required String name,
  });

  Future<void> removeConversation({
    required String uid,
    required String id,
  });
}
