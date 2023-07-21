import 'package:chat_gpt/src/model/message/message_model.dart';

import 'package:chat_gpt/src/model/chat_completion/chat_completion_model.dart';

abstract class ChatRepository {
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

  Future<List<MessageModel>> getHistory();

  Future<void> addHistory({
    required MessageModel chatHistoryModel,
  });
}
