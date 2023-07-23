import 'package:chat_gpt/src/data/client/http_client.dart';

import 'package:chat_gpt/src/model/chat_completion/chat_completion_model.dart';

import 'package:chat_gpt/src/data/provider/message/remote/message_network_data_provider.dart';

class MessageNetworkDataProviderImpl implements MessageNetworkDataProvider {
  const MessageNetworkDataProviderImpl({
    required HttpClient httpClient,
  }) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<ChatCompletionModel> createChatCompletion({
    required Map<String, dynamic> body,
  }) async {
    final response = await _httpClient.post(
      endpoint: '/chat/completions',
      body: body,
    );
    return ChatCompletionModel.fromJson(response);
  }
}
