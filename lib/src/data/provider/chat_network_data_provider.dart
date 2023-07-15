import 'package:chat_gpt/src/models/chat_completion_model.dart';

abstract class ChatNetworkDataProvider {
  Future<ChatCompletionModel> createChatCompletion({
    required Map<String, dynamic> body,
  });
}
