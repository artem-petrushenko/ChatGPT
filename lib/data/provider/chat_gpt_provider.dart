import 'package:flutter/material.dart';

import 'package:chat_gpt/models/chat_completion_model.dart';

@immutable
abstract class ChatGPTProvider {
  Future<ChatCompletionModel> createChatCompletion({
    required Map<String, dynamic> body,
  });
}
