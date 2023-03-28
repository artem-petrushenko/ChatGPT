import 'package:chat_gpt/providers/chat_gpt_service.dart';

class ChatGPTRepository {
  final _chatGPTProvider = ChatGPTService();

  Future<void> createChatCompletion() async {
    final models = await _chatGPTProvider.createChatCompletion(
      body: <String, dynamic>{
        'model': "gpt-3.5-turbo",
        'messages': [
          {
            'role': 'user',
            'content': 'How are you?',
          },
        ],
      },
    );
    print(models.choices?.last.message?.content);
  }
}
