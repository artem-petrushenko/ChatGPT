import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:chat_gpt/src/data/provider/chats_network_data_provider.dart';
import 'package:chat_gpt/src/data/client/cloud_firestore.dart';
import 'package:chat_gpt/src/model/conversation/conversation_model.dart';

class ChatsNetworkDataProviderImpl implements ChatsNetworkDataProvider {
  const ChatsNetworkDataProviderImpl({
    required CloudFirestore cloudFirestore,
  }) : _cloudFirestore = cloudFirestore;

  final CloudFirestore _cloudFirestore;

  @override
  Future<void> createChat({
    required String name,
    required String uid,
  }) async {
    final db = FirebaseFirestore.instance;
    final document = db.collection('conversations').doc();
    await document.set({
      'conversation_id': document.id,
      'name': name,
      'participants': [uid],
      'created_at': DateTime.now().millisecondsSinceEpoch,
      'updated_at': DateTime.now().millisecondsSinceEpoch,
    });
  }

  @override
  Future<List<ConversationModel>> getChats({
    required String uid,
    required String id,
  }) async {
    final db = FirebaseFirestore.instance;
    final collection = db.collection('conversations');
    final response = id != ''
        ? await collection
            .where('participants', arrayContains: uid)
            .orderBy('updated_at')
            .startAfter([id])
            .limit(10)
            .get()
        : await collection
            .where('participants', arrayContains: uid)
            .orderBy('updated_at')
            .limit(10)
            .get();
    return response.docs
        .map((e) => ConversationModel.fromFirestore(e))
        .toList();
  }

  @override
  Future<void> removeChat({
    required String uid,
    required String id,
  }) async {
    final db = FirebaseFirestore.instance;
    await db.collection('conversations').doc(id).delete();
  }
}
