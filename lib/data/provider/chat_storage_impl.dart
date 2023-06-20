import 'package:sqflite/sqflite.dart';

import 'package:chat_gpt/model/chat_history_model.dart';

import 'package:chat_gpt/data/provider/chat_storage.dart';

import 'package:chat_gpt/data/client/sqlite.dart';

class ChatStorageImpl implements ChatStorage {
  const ChatStorageImpl({
    required SQLite sqLite,
  }) : _sqLite = sqLite;

  final SQLite _sqLite;

  @override
  Future<void> insertMessage({
    ChatHistoryModel? chatHistoryModel,
  }) async {
    final database = await _sqLite.initializeDB();

    final data = <String, dynamic>{
      'name': chatHistoryModel?.name,
      'message': chatHistoryModel?.message,
    };
    await database.insert('chats', data,
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  @override
  Future<List<ChatHistoryModel>> getItems() async {
    final database = await _sqLite.initializeDB();
    final List<Map<String, dynamic>> query = await database.query('chats');
    return query.map((e) => ChatHistoryModel.fromJson(e)).toList();
  }
}
