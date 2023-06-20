import 'package:flutter/material.dart';

import 'package:chat_gpt/data/provider/chat_models_provider.dart';
import 'package:chat_gpt/data/repository/chat_models_repository.dart';
import 'package:chat_gpt/models/models_model.dart';

@immutable
class ChatModelsRepositoryImpl implements ChatModelsRepository {
  const ChatModelsRepositoryImpl({
    required ChatModelsProvider chatModelsProvider,
  }) : _chatModelsProvider = chatModelsProvider;

  final ChatModelsProvider _chatModelsProvider;

  @override
  Future<ModelsModel> getModels() async =>
      await _chatModelsProvider.getModels();
}
