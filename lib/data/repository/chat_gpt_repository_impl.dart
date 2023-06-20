import 'package:chat_gpt/data/provider/chat_storage.dart';
import 'package:chat_gpt/models/chat_completion_model.dart';
import 'package:flutter/material.dart';

import 'package:chat_gpt/data/provider/chat_gpt_provider.dart';

import 'package:chat_gpt/data/repository/chat_gpt_repository.dart';

import 'package:chat_gpt/model/chat_history_model.dart';

@immutable
class ChatGPTRepositoryImpl implements ChatGPTRepository {
  const ChatGPTRepositoryImpl(
      {required ChatGPTProvider chatGPTProvider,
      required ChatStorage chatStorage})
      : _chatGPTProvider = chatGPTProvider,
        _chatStorage = chatStorage;

  final ChatGPTProvider _chatGPTProvider;
  final ChatStorage _chatStorage;

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
    final chatCompletion = await _chatGPTProvider.createChatCompletion(
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
    return await _chatStorage.getItems();
  }

  @override
  Future<void> addHistory({
    required ChatHistoryModel chatHistoryModel,
  }) async {
    await _chatStorage.insertMessage(chatHistoryModel: chatHistoryModel);
  }
}
