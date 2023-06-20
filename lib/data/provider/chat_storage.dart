import 'package:chat_gpt/model/chat_history_model.dart';

abstract class ChatStorage {
  Future<void> insertMessage({
    required ChatHistoryModel chatHistoryModel,
  });

  Future<List<ChatHistoryModel>> getItems();
}
