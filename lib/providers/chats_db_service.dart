import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'package:chat_gpt/screens/chat/model/chat_history_model.dart';

class ChatsDBService {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();

    return openDatabase(
      join(path, 'database.db'),
      onCreate: (database, version) async {
        await database.execute(
          "CREATE TABLE chats("
          "id INTEGER PRIMARY KEY AUTOINCREMENT, "
          "name TEXT NOT NULL, "
          "message TEXT NOT NULL)",
        );
      },
      version: 1,
    );
  }

  Future<void> insertMessage({
    ChatHistoryModel? chatHistoryModel,
  }) async {
    final database = await initializeDB();

    final data = <String, dynamic>{
      'name': chatHistoryModel?.name,
      'message': chatHistoryModel?.message,
    };
    await database.insert('chats', data,
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<ChatHistoryModel>> getItems() async {
    final database = await initializeDB();
    final List<Map<String, dynamic>> query =
        await database.query('chats');
    return query.map((e) => ChatHistoryModel.fromJson(e)).toList();
  }
}
