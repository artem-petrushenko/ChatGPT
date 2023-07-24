import 'package:flutter/material.dart';

import 'package:chat_gpt/src/data/provider/chat/remote/chat_network_data_provider.dart';
import 'package:chat_gpt/src/model/message/message_model.dart';
import 'package:chat_gpt/src/data/repository/chat/chat_repository.dart';

import 'package:chat_gpt/src/data/provider/chat/local/chat_database_access_object.dart';

@immutable
class ChatRepositoryImpl implements ChatRepository {
  const ChatRepositoryImpl({
    required ChatDatabaseAccessObject chatDatabaseAccessObject,
    required ChatNetworkDataProvider chatNetworkDataProvider,
  })  : _chatNetworkDataProvider = chatNetworkDataProvider,
        _chatDatabaseAccessObject = chatDatabaseAccessObject;

  final ChatNetworkDataProvider _chatNetworkDataProvider;

  final ChatDatabaseAccessObject _chatDatabaseAccessObject;

  @override
  Future<List<MessageModel>> getHistory({
    required String messageId,
    required String conversationId,
  }) async {
    // return await _chatDatabaseAccessObject.getItems();
    return await _chatNetworkDataProvider.getChatHistory(
      messageId: messageId,
      conversationId: conversationId,
    );
  }

  @override
  Future<void> addHistory({
    required MessageModel chatHistoryModel,
  }) async {
    await _chatDatabaseAccessObject.insertMessage(
        chatHistoryModel: chatHistoryModel);
  }

  @override
  Future<void> sendMessage({
    required String uid,
    required String message,
    required String conversationId,
  }) async {
    await _chatNetworkDataProvider.sendMessage(
      uid: uid,
      message: message,
      conversationId: conversationId,
    );
  }
}
