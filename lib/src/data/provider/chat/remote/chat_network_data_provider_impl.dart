import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:chat_gpt/src/model/message/message_model.dart';

import 'package:chat_gpt/src/data/provider/chat/remote/chat_network_data_provider.dart';

import 'package:chat_gpt/src/data/client/cloud_firestore.dart';

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
    final db = FirebaseFirestore.instance;
    final collection = db.collection('messages');
    final response = messageId != ''
        ? await collection
            .where('conversation_id', isEqualTo: conversationId)
            .orderBy('timestamp', descending: true)
            .startAfter([messageId])
            .limit(1)
            .get()
        : await collection
            .where('conversation_id', isEqualTo: conversationId)
            .orderBy('timestamp', descending: true)
            .limit(1)
            .get();
    return response.docs.map((e) => MessageModel.fromFirestore(e)).toList();
  }
}
