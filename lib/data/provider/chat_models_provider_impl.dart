import 'package:chat_gpt/data/provider/chat_models_provider.dart';

import 'package:chat_gpt/data/client/http_client.dart';

import 'package:chat_gpt/models/models_model.dart';

class ChatModelsProviderImpl implements ChatModelsProvider {
  const ChatModelsProviderImpl({
    required HttpClient httpClient,
  }) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<ModelsModel> getModels() async {
    final response = await _httpClient.get(endpoint: '/models');
    return ModelsModel.fromJson(response);
  }
}
