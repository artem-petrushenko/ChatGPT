import 'dart:convert';

import 'package:chat_gpt/src/data/client/sqlite_database.dart';
import 'package:chat_gpt/src/data/provider/conversations/local/conversations_database_access_object.dart';
import 'package:chat_gpt/src/model/conversation/conversation_model.dart';

class ConversationsDatabaseAccessObjectImpl
    implements ConversationsDatabaseAccessObject {
  final SQLiteDatabase _sqLiteDatabase;

  const ConversationsDatabaseAccessObjectImpl({
    required SQLiteDatabase sqLiteDatabase,
  }) : _sqLiteDatabase = sqLiteDatabase;

  @override
  Future<List<ConversationModel>> fetchConversations({
    required String uid,
    required String id,
  }) async {
    final db = await _sqLiteDatabase.conversationsDatabase;

    String selectQuery = '''
    SELECT * FROM ${_sqLiteDatabase.tableConversations}
    WHERE ${_sqLiteDatabase.columnConversationsParticipants} LIKE ?
  ''';

    List<String> arguments = ['%$uid%'];

    if (id.isNotEmpty) {
      selectQuery += '''
      AND ${_sqLiteDatabase.columnConversationsConversationId} > ?
    ''';
      arguments.add(id);
    }

    selectQuery += '''
    ORDER BY ${_sqLiteDatabase.columnConversationsUpdatedAt} DESC
  ''';

    final result = await db.rawQuery(selectQuery, arguments);
    return result.map((e) => ConversationModel.fromSQL(e)).toList();
  }

  @override
  Future<void> createConversation({
    required String name,
    required String uid,
    required String id,
  }) async {
    final db = await _sqLiteDatabase.conversationsDatabase;
    await db.rawInsert('''INSERT INTO ${_sqLiteDatabase.tableConversations} 
       (${_sqLiteDatabase.columnConversationsConversationId}, 
       ${_sqLiteDatabase.columnConversationsCreatedAt}, 
       ${_sqLiteDatabase.columnConversationsName},
       ${_sqLiteDatabase.columnConversationsParticipants}, 
       ${_sqLiteDatabase.columnConversationsUpdatedAt}) 
       VALUES
    ('$id', 
    ${DateTime.now().millisecondsSinceEpoch},
        '$name', 
        '${jsonEncode([uid])}', 
        ${DateTime.now().millisecondsSinceEpoch}
        )''');
  }

  @override
  Future<void> removeConversation({required String id}) async {
    final db = await _sqLiteDatabase.conversationsDatabase;
    await db.rawDelete(
        'DELETE FROM ${_sqLiteDatabase.tableConversations} '
        'WHERE ${_sqLiteDatabase.columnConversationsConversationId} = ?',
        [id]);
  }
}
