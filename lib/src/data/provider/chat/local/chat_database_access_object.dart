import 'package:chat_gpt/src/model/message/message_model.dart';

abstract class ChatDatabaseAccessObject {
  Future<void> insertMessage({
    required MessageModel chatHistoryModel,
  });

  Future<List<MessageModel>> getItems();
}
