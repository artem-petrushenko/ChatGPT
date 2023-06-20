import 'package:chat_gpt/models/chat_completion_model.dart';

import 'package:chat_gpt/model/chat_history_model.dart';

abstract class ChatGPTRepository {
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
  });

  Future<List<ChatHistoryModel>> getHistory();

  Future<void> addHistory({
    required ChatHistoryModel chatHistoryModel,
  });
}
