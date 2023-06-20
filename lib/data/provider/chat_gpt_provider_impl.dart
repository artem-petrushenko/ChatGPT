import 'package:chat_gpt/data/provider/chat_gpt_provider.dart';
import 'package:chat_gpt/models/chat_completion_model.dart';

import 'package:chat_gpt/data/client/http_client.dart';

class ChatGPTProviderImpl implements ChatGPTProvider {
  const ChatGPTProviderImpl({
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
