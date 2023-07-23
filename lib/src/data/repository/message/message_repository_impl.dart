import 'package:flutter/widgets.dart';

import 'package:chat_gpt/src/data/repository/message/message_repository.dart';

import 'package:chat_gpt/src/model/chat_completion/chat_completion_model.dart';
import 'package:chat_gpt/src/data/provider/message/remote/message_network_data_provider.dart';

@immutable
class MessageRepositoryImpl implements MessageRepository {
  const MessageRepositoryImpl({
    required MessageNetworkDataProvider messageNetworkDataProvider,
  }) : _messageNetworkDataProvider = messageNetworkDataProvider;
  final MessageNetworkDataProvider _messageNetworkDataProvider;

  @override
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
    final chatCompletion =
        await _messageNetworkDataProvider.createChatCompletion(
      body: <String, dynamic>{
        'model': model,
        'messages': messages,
        'stream': stream,
      },
    );
    return chatCompletion;
  }
}
