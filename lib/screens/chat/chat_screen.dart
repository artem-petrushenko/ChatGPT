import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/screens/chat/bloc/chat_bloc.dart';

import 'package:chat_gpt/repository/chat_gpt_repository.dart';

import 'package:chat_gpt/screens/chat/screens/chat_error_screen.dart';
import 'package:chat_gpt/screens/chat/screens/chat_loading_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ChatGPTRepository(),
      child: BlocProvider(
        create: (context) =>
            ChatBloc(RepositoryProvider.of<ChatGPTRepository>(context))
              ..add(GetChatEvent()),
        child: BlocBuilder<ChatBloc, ChatState>(
          builder: (context, state) {
            if (state is ChatLoadingState) {
              return const ChatLoadingScreen();
            } else if (state is ChatLoadedState) {
              return Scaffold(
                bottomNavigationBar: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Expanded(child: TextField()),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.list,
                      ),
                    ),
                    IconButton(
                      onPressed: () => BlocProvider.of<ChatBloc>(context)
                          .add(GetChatEvent()),
                      icon: const Icon(
                        Icons.send_outlined,
                      ),
                    ),
                  ],
                ),
                body: ListView.builder(
                  reverse: true,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      dense: true,
                      visualDensity: VisualDensity.compact,
                      leading: const Icon(Icons.chat_outlined),
                      title: Text(
                          "${state.chatCompletionModel.choices?.first.message?.content}"),
                    );
                  },
                  itemCount: state.chatCompletionModel.choices?.length,
                ),
              );
            } else if (state is ChatErrorState) {
              return const ChatErrorScreen();
            }
            return const ChatErrorScreen();
          },
        ),
      ),
    );
  }
}
