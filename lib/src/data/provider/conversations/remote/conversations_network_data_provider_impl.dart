import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:chat_gpt/src/data/client/cloud_firestore.dart';
import 'package:chat_gpt/src/model/conversation/conversation_model.dart';
import 'package:chat_gpt/src/data/provider/conversations/remote/conversations_network_data_provider.dart';

class ConversationsNetworkDataProviderImpl
    implements ConversationsNetworkDataProvider {
  const ConversationsNetworkDataProviderImpl({
    required CloudFirestore cloudFirestore,
  }) : _cloudFirestore = cloudFirestore;

  final CloudFirestore _cloudFirestore;

  @override
  Future<String> createConversation({
    required String name,
    required String uid,
  }) async {
    final db = FirebaseFirestore.instance;
    final document = db.collection('conversations').doc();
    await document.set({
      'conversation_id': document.id,
      'name': name,
      'participants': [uid],
      'created_at': FieldValue.serverTimestamp(),
      'updated_at': FieldValue.serverTimestamp(),
    });
    return document.id;
  }

  @override
  Future<List<ConversationModel>> fetchConversations({
    required String uid,
    required String id,
  }) async {
    final db = FirebaseFirestore.instance;
    final query = db
        .collection('conversations')
        .where('participants', arrayContains: uid)
        .orderBy('updated_at', descending: true);
    final QuerySnapshot<Map<String, dynamic>> response;
    if (id != '') {
      final lastChat = await _cloudFirestore.read(
        collection: 'conversations',
        documentId: id,
      );
      response = await query.startAfterDocument(lastChat).limit(20).get();
    } else {
      response = await query.limit(20).get();
    }
    return response.docs
        .map((e) => ConversationModel.fromFirestore(e))
        .toList();
  }

  @override
  Future<void> removeConversation({
    required String id,
  }) async =>
      await _cloudFirestore.delete(
        collection: 'conversations',
        documentId: id,
      );

  @override
  Future<void> updateConversationDate({
    required String id,
  }) async =>
      await _cloudFirestore.update(
        collection: 'conversations',
        documentId: id,
        data: {
          'updated_at': FieldValue.serverTimestamp(),
        },
      );
}
