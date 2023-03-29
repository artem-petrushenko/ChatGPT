import 'package:chat_gpt/models/chat_completion_model.dart';
import 'package:chat_gpt/providers/chat_gpt_service.dart';

class ChatGPTRepository {
  final _chatGPTProvider = ChatGPTService();

  Future<ChatCompletionModel> createChatCompletion(
  ) async {
    final chatCompletion = await _chatGPTProvider.createChatCompletion(
      body: <String, dynamic>{
        'model': "gpt-3.5-turbo",
        'messages': [
          {
            'role': 'user',
            'content': 'Write how to call functions from Flutter BLoC and pass variables ',
          },
        ],
      },
    );
    return chatCompletion;
  }
}
