import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:chat_gpt/src/data/provider/chats_network_data_provider.dart';
import 'package:chat_gpt/src/data/client/cloud_firestore.dart';
import 'package:chat_gpt/src/models/chat_model.dart';

class ChatsNetworkDataProviderImpl implements ChatsNetworkDataProvider {
  const ChatsNetworkDataProviderImpl({required CloudFirestore cloudFirestore})
      : _cloudFirestore = cloudFirestore;

  final CloudFirestore _cloudFirestore;

  @override
  Future<void> createChat({
    required String name,
    required String uid,
  }) async {
    final db = FirebaseFirestore.instance;
    final document = db.collection("users").doc(uid).collection('chats').doc();
    await document.set({
      'name': name,
      'id': document.id,
    } as Map<String, dynamic>);
  }

  @override
  Future<List<ChatModel>> getChats({
    required String uid,
    required String id,
  }) async {
    final db = FirebaseFirestore.instance;
    final collection = db.collection("users").doc(uid).collection('chats');
    final response = id != ''
        ? await collection.orderBy('id').startAfter([id]).limit(10).get()
        : await collection.orderBy('id').limit(10).get();
    return response.docs.map((e) => ChatModel.fromFirestore(e)).toList();
  }

  @override
  Future<void> removeChat({
    required String uid,
    required String id,
  }) async {
    final db = FirebaseFirestore.instance;
    final collection = db.collection("users").doc(uid).collection('chats');
    await collection.doc(id).delete();
  }
}
