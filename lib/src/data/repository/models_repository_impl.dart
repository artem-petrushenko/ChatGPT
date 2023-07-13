import 'package:flutter/material.dart';

import 'package:chat_gpt/src/data/provider/models_network_data_provider.dart';
import 'package:chat_gpt/src/data/repository/models_repository.dart';
import 'package:chat_gpt/src/models/models_model.dart';

@immutable
class ModelsRepositoryImpl implements ModelsRepository {
  const ModelsRepositoryImpl({
    required ModelsNetworkDataProvider modelsNetworkDataProvider,
  }) : _modelsNetworkDataProvider = modelsNetworkDataProvider;

  final ModelsNetworkDataProvider _modelsNetworkDataProvider;

  @override
  Future<ModelsModel> getModels() async =>
      await _modelsNetworkDataProvider.getModels();
}
