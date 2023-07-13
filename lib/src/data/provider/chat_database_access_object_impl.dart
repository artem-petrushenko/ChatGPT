import 'package:sqflite/sqflite.dart';

import 'package:chat_gpt/src/models/chat_history_model.dart';

import 'package:chat_gpt/src/data/provider/chat_database_access_object.dart';

import 'package:chat_gpt/src/data/client/sqlite_database.dart';

class ChatDatabaseAccessObjectImpl implements ChatDatabaseAccessObject {
  const ChatDatabaseAccessObjectImpl({
    required SQLiteDatabase sqLiteDatabase,
  }) : _sqLiteDatabase = sqLiteDatabase;

  final SQLiteDatabase _sqLiteDatabase;

  @override
  Future<void> insertMessage({
    ChatHistoryModel? chatHistoryModel,
  }) async {
    final database = await _sqLiteDatabase.initializeDB();

    final data = <String, dynamic>{
      'name': chatHistoryModel?.name,
      'message': chatHistoryModel?.message,
    };
    await database.insert('chats', data,
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  @override
  Future<List<ChatHistoryModel>> getItems() async {
    final database = await _sqLiteDatabase.initializeDB();
    final List<Map<String, dynamic>> query = await database.query('chats');
    return query.map((e) => ChatHistoryModel.fromJson(e)).toList();
  }
}
