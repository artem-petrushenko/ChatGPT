import 'package:chat_gpt/src/data/provider/chat_network_data_provider.dart';
import 'package:chat_gpt/src/data/client/http_client.dart';
import 'package:chat_gpt/src/model/chat_completion/chat_completion_model.dart';

class ChatNetworkDataProviderImpl implements ChatNetworkDataProvider {
  const ChatNetworkDataProviderImpl({
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
