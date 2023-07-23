import 'package:chat_gpt/src/model/conversation/conversation_model.dart';

abstract class ChatsNetworkDataProvider {
  Future<void> createChat({
    required String name,
    required String uid,
  });

  Future<List<ConversationModel>> getChats({
    required String uid,
    required String id,
  });

  Future<void> removeChat({
    required String uid,
    required String id,
  });
}
