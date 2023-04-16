import 'package:chat_gpt/models/chat_completion_model.dart';
import 'package:chat_gpt/providers/chat_gpt_service.dart';

class ChatGPTRepository {
  final _chatGPTProvider = ChatGPTService();

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
}
