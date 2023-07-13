import 'package:chat_gpt/src/data/provider/chat_database_access_object.dart';
import 'package:chat_gpt/src/models/chat_completion_model.dart';
import 'package:flutter/material.dart';

import 'package:chat_gpt/src/data/provider/chat_network_data_provider.dart';

import 'package:chat_gpt/src/data/repository/chat_repository.dart';

import 'package:chat_gpt/src/models/chat_history_model.dart';

@immutable
class ChatRepositoryImpl implements ChatRepository {
  const ChatRepositoryImpl({
    required ChatNetworkDataProvider chatNetworkDataProvider,
    required ChatDatabaseAccessObject chatDatabaseAccessObject,
  })  : _chatNetworkDataProvider = chatNetworkDataProvider,
        _chatDatabaseAccessObject = chatDatabaseAccessObject;

  final ChatNetworkDataProvider _chatNetworkDataProvider;
  final ChatDatabaseAccessObject _chatDatabaseAccessObject;

  @override
  Future<ChatCompletionModel> createChatCompletion({
    required String model,
    required List<Map<String, dynamic>> messages,
    double? temperature,
    double? topP,
    int? n,
    bool? stream,
    String? stop,
    int? maxTokens,
    double? presencePenalty,
    double? frequencyPenalty,
    Map<String, dynamic>? logitBias,
    String? user,
  }) async {
    final chatCompletion = await _chatNetworkDataProvider.createChatCompletion(
      body: <String, dynamic>{
        'model': model,
        'messages': messages,
        'stream': stream,
      },
    );
    return chatCompletion;
  }

  @override
  Future<List<ChatHistoryModel>> getHistory() async {
    return await _chatDatabaseAccessObject.getItems();
  }

  @override
  Future<void> addHistory({
    required ChatHistoryModel chatHistoryModel,
  }) async {
    await _chatDatabaseAccessObject.insertMessage(
        chatHistoryModel: chatHistoryModel);
  }
}
