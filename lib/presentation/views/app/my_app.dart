import 'package:chat_gpt/data/client/http_client.dart';
import 'package:chat_gpt/data/client/sqlite.dart';
import 'package:chat_gpt/data/provider/chat_gpt_provider_impl.dart';
import 'package:chat_gpt/data/provider/chat_storage_impl.dart';
import 'package:chat_gpt/data/repository/chat_gpt_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/presentation/blocs/blocs/chat/chat_bloc.dart';

import 'package:chat_gpt/presentation/views/chat/chat_view.dart';

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
          chatGPTRepository: ChatGPTRepositoryImpl(
            chatGPTProvider: ChatGPTProviderImpl(
              httpClient: HttpClient(),
            ),
            chatStorage: ChatStorageImpl(
              sqLite: SQLite(),
            ),
          ),
        )..add(const ChatEvent.loadingChat()),
        child: const ChatView(),
      ),
    );
  }
}
