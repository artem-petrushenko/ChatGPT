import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class SQLiteDatabase {
  const SQLiteDatabase();

  static Database? _conversationsDatabase;

  final String dbConversationsName = 'conversations.db';
  final int dbConversationsVersion = 1;

  final String tableConversations = 'conversations';
  final String columnConversationsId = '_id';

  final String columnConversationsConversationId = 'conversation_id';
  final String columnConversationsCreatedAt = 'created_at';
  final String columnConversationsName = 'name';
  final String columnConversationsParticipants = 'participants';
  final String columnConversationsUpdatedAt = 'updated_at';

  Future<Database> get conversationsDatabase async {
    if (_conversationsDatabase != null) return _conversationsDatabase!;

    _conversationsDatabase = await initConversationsDatabase();
    return _conversationsDatabase!;
  }

  Future<Database> initConversationsDatabase() async {
    final Directory documentsDirectory =
        await getApplicationDocumentsDirectory();

    final String path = join(documentsDirectory.path, dbConversationsName);
    return await openDatabase(
      path,
      version: dbConversationsVersion,
      onCreate: (db, version) {
        return db.execute('''
          CREATE TABLE $tableConversations (
            $columnConversationsId INTEGER PRIMARY KEY, 
            $columnConversationsConversationId TEXT NOT NULL, 
            $columnConversationsCreatedAt INTEGER NOT NULL, 
            $columnConversationsName TEXT NOT NULL, 
            $columnConversationsParticipants TEXT NOT NULL, 
            $columnConversationsUpdatedAt INTEGER NOT NULL
          )
        ''');
      },
    );
  }
}
