import 'package:chat_gpt/src/model/message/message_model.dart';

abstract class ChatRepository {
  Future<List<MessageModel>> getHistory({
    required String messageId,
    required String conversationId,
  });

  Future<void> addHistory({
    required MessageModel chatHistoryModel,
  });

  Future<void> sendMessage({
    required String uid,
    required String message,
    required String conversationId,
  });

  Future<void> removeMessage({
    required String messageId,
  });
}
