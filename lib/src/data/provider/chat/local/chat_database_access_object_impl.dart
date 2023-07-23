import 'package:sqflite/sqflite.dart';

import 'package:chat_gpt/src/data/provider/chat/local/chat_database_access_object.dart';

import 'package:chat_gpt/src/data/client/sqlite_database.dart';

import 'package:chat_gpt/src/model/message/message_model.dart';

class ChatDatabaseAccessObjectImpl implements ChatDatabaseAccessObject {
  const ChatDatabaseAccessObjectImpl({
    required SQLiteDatabase sqLiteDatabase,
  }) : _sqLiteDatabase = sqLiteDatabase;

  final SQLiteDatabase _sqLiteDatabase;

  @override
  Future<void> insertMessage({
    MessageModel? chatHistoryModel,
  }) async {
    // final database = await _sqLiteDatabase.initializeDB();
    //
    // final data = <String, dynamic>{
    //   'name': chatHistoryModel?.senderId,
    //   'message': chatHistoryModel?.message,
    // };
    // await database.insert('chats', data,
    //     conflictAlgorithm: ConflictAlgorithm.replace);
  }

  @override
  Future<List<MessageModel>> getItems() async {
    final database = await _sqLiteDatabase.initializeDB();
    final List<Map<String, dynamic>> query = await database.query('chats');
    return query.map((e) => MessageModel.fromJson(e)).toList();
  }
}
