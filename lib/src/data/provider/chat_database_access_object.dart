import 'package:chat_gpt/src/models/chat_history_model.dart';

abstract class ChatDatabaseAccessObject {
  Future<void> insertMessage({
    required ChatHistoryModel chatHistoryModel,
  });

  Future<List<ChatHistoryModel>> getItems();
}
