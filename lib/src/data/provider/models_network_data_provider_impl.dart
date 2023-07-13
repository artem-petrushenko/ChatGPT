import 'package:chat_gpt/src/data/provider/models_network_data_provider.dart';

import 'package:chat_gpt/src/data/client/http_client.dart';

import 'package:chat_gpt/src/models/models_model.dart';

class ModelsNetworkDataProviderImpl implements ModelsNetworkDataProvider {
  const ModelsNetworkDataProviderImpl({
    required HttpClient httpClient,
  }) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<ModelsModel> getModels() async {
    final response = await _httpClient.get(endpoint: '/models');
    return ModelsModel.fromJson(response);
  }
}
