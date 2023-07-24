import 'package:chat_gpt/src/model/message/message_model.dart';

abstract class ChatNetworkDataProvider {
  Future<List<MessageModel>> getChatHistory({
    required String messageId,
    required String conversationId,
  });

  Future<void> sendMessage({
    required String uid,
    required String message,
    required String conversationId,
  });
}
