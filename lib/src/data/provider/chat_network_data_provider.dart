import 'package:flutter/material.dart';

import 'package:chat_gpt/src/models/chat_completion_model.dart';

@immutable
abstract class ChatNetworkDataProvider {
  Future<ChatCompletionModel> createChatCompletion({
    required Map<String, dynamic> body,
  });
}
