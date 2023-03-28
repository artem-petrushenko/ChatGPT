import 'package:chat_gpt/models/chat_completion_model.dart';
import 'package:chat_gpt/providers/api_request_helper.dart';

class ChatGPTService {
  final _apiRequestHelper = ApiRequestHelper();

  Future<ChatCompletionModel> createChatCompletion({
    required Map<String, dynamic> body,
  }) async {
    final response = await _apiRequestHelper.post(
      endpoint: '/chat/completions',
      body: body,
    );
    return ChatCompletionModel.fromJson(response);
  }
}
