import 'package:chat_gpt/src/model/message/message_model.dart';

abstract class ChatRepository {
  Future<List<MessageModel>> getHistory({
    required String messageId,
    required String conversationId,
  });

  Future<void> addHistory({
    required MessageModel chatHistoryModel,
  });
}
