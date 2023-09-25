import 'package:chat_gpt/src/model/conversation/conversation_model.dart';

abstract class ConversationsNetworkDataProvider {
  Future<String> createConversation({
    required String name,
    required String uid,
  });

  Future<List<ConversationModel>> fetchConversations({
    required String uid,
    required String id,
  });

  Future<void> removeConversation({
    required String id,
  });

  Future<void> updateConversationDate({
    required String id,
  });
}
