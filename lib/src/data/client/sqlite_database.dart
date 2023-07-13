import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SQLiteDatabase {
  const SQLiteDatabase();

  Future<Database> initializeDB() async {
    final String path = await getDatabasesPath();

    return openDatabase(
      join(path, 'database.db'),
      onCreate: (database, version) async {
        await database.execute(
          "CREATE TABLE chats"
          "("
          "id INTEGER PRIMARY KEY AUTOINCREMENT, "
          "name TEXT NOT NULL, "
          "message TEXT NOT NULL"
          ")",
        );
      },
      version: 1,
    );
  }
}
