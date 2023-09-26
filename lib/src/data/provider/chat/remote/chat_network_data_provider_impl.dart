import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:chat_gpt/src/data/client/cloud_firestore.dart';

import 'package:chat_gpt/src/model/message/message_model.dart';

import 'package:chat_gpt/src/data/provider/chat/remote/chat_network_data_provider.dart';

class ChatNetworkDataProviderImpl implements ChatNetworkDataProvider {
  const ChatNetworkDataProviderImpl({
    required CloudFirestore cloudFirestore,
  }) : _cloudFirestore = cloudFirestore;

  final CloudFirestore _cloudFirestore;

  @override
  Future<List<MessageModel>> getChatHistory({
    required String messageId,
    required String conversationId,
  }) async {
    final collection = FirebaseFirestore.instance.collection('messages');
    final query = collection
        .where('conversation_id', isEqualTo: conversationId)
        .orderBy('timestamp', descending: true);
    final QuerySnapshot<Map<String, dynamic>> response;
    if (messageId != '') {
      final lastMessage = await collection.doc(messageId).get();
      response = await query.startAfterDocument(lastMessage).limit(20).get();
    } else {
      response = await query.limit(20).get();
    }
    return response.docs.map((e) => MessageModel.fromFirestore(e)).toList();
  }

  @override
  Future<void> sendMessage({
    required String uid,
    required String message,
    required String conversationId,
  }) async {
    final collection = FirebaseFirestore.instance.collection('messages');
    final document = collection.doc();
    await document.set({
      'message_id': document.id,
      'content': message,
      'conversation_id': conversationId,
      'sender': uid,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  @override
  Future<void> removeMessage({
    required String messageId,
  }) async =>
      await _cloudFirestore.delete(
        collection: 'messages',
        documentId: messageId,
      );
}
