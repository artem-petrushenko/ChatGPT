import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:chat_gpt/src/data/provider/chats/remote/chats_network_data_provider.dart';
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
    final collection = FirebaseFirestore.instance.collection('conversations');
    final query = collection
        .where('participants', arrayContains: uid)
        .orderBy('updated_at', descending: true);
    final QuerySnapshot<Map<String, dynamic>> response;
    if (id != '') {
      final lastChat = await collection.doc(id).get();
      response = await query.startAfterDocument(lastChat).limit(20).get();
    } else {
      response = await query.limit(20).get();
    }
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
