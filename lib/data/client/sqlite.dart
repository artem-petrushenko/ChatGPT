import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SQLite {
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
}