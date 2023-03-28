import 'package:flutter/material.dart';

import 'package:chat_gpt/repository/chat_gpt_service.dart';
import 'package:chat_gpt/repository/models_service.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rep = ModelsRepository();
    final chatGPTRepository = ChatGPTRepository();
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatGPT'),
      ),
      bottomNavigationBar: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () => rep.getModels(),
            icon: const Icon(
              Icons.list,
            ),
          ),
          IconButton(
            onPressed: () => chatGPTRepository.createChatCompletion(),
            icon: const Icon(
              Icons.send_outlined,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            leading: const Icon(Icons.chat_outlined),
            title: Text("$index"),
            // subtitle: const Text('1'),
          );
        },
        itemCount: 100,
      ),
    );
  }
}
