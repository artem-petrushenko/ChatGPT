import 'package:chat_gpt/src/model/conversation/conversation_model.dart';

abstract class ConversationsDatabaseAccessObject {
  Future<List<ConversationModel>> fetchConversations({
    required String uid,
    required String id,
  });

  Future<void> createConversation({
    required String name,
    required String uid,
    required String id,
  });

  Future<void> removeConversation({
    required String id,
  });
}
