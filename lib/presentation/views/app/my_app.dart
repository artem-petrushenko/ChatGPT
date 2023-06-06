import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/presentation/blocs/blocs/chat/chat_bloc.dart';

import 'package:chat_gpt/presentation/views/chat/chat_view.dart';

import 'package:chat_gpt/repository/chat_gpt_repository.dart';
import 'package:chat_gpt/repository/chats_db_repository.dart';

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
      home: BlocProvider(
        create: (context) => ChatBloc(
          chatGPTRepository: ChatGPTRepository(),
          chatsDBRepository: ChatsDBRepository(),
        )..add(const ChatEvent.loadingChat()),
        child: const ChatView(),
      ),
    );
  }
}
