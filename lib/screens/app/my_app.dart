import 'package:flutter/material.dart';

import 'package:chat_gpt/screens/chat/chat_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatGPT',
      theme: ThemeData(
        fontFamily: 'Raleway',
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF10A37F),
        brightness: Brightness.dark,
      ),
      home: const ChatScreen(),
    );
  }
}
