import 'package:chat_gpt/providers/chats_db_service.dart';

import 'package:chat_gpt/screens/chat/model/chat_history_model.dart';

class ChatsDBRepository {
  final _chatsDBService = ChatsDBService();

  void insertMessage({
    required ChatHistoryModel chatHistoryModel,
  }) async {
    await _chatsDBService.insertMessage(chatHistoryModel: chatHistoryModel);
  }

  Future<List<ChatHistoryModel>> getMessage() async {
    return await _chatsDBService.getItems();
  }
}
