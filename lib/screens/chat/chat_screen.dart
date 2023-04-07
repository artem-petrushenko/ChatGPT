import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/repository/chat_gpt_repository.dart';

import 'package:chat_gpt/screens/chat/bloc/chat_bloc.dart';

import 'package:chat_gpt/screens/chat/screens/chat_error_screen.dart';
import 'package:chat_gpt/screens/chat/screens/chat_loading_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        RepositoryProvider(create: (context) => ChatGPTRepository()),
        BlocProvider(
          create: (context) =>
              ChatBloc(RepositoryProvider.of<ChatGPTRepository>(context))
                ..add(LoadingChatEvent()),
        ),
      ],
      child: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          // switch (state.runtimeType) {
          //   case ChatLoadingState:
          //     return const ChatLoadingScreen();
          //   case ChatLoadedState:
          //
          //   case ChatErrorState:
          //     return const ChatErrorScreen();
          //   default:
          //     return const ChatErrorScreen();
          // }
          if (state is ChatLoadingState) {
            return const ChatLoadingScreen();
          } else if (state is ChatLoadedState) {
            return Scaffold(
              body: CustomScrollView(
                slivers: [
                  const SliverAppBar(
                    title: Text('ChatGPT'),
                    centerTitle: true,
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ListTile(
                          dense: true,
                          visualDensity: VisualDensity.compact,
                          leading: const Icon(Icons.chat_outlined),
                          title: Text(
                              "${state.chatCompletionModel?.choices?.first.message?.content}"),
                        );
                      },
                      childCount:
                          state.chatCompletionModel?.choices?.length ?? 0,
                    ),
                  )
                ],
              ),
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                     const Expanded(child: TextField(
                      // onChanged: (String message) => ,
                    ),),
                    IconButton(
                      onPressed: () => context.read<ChatBloc>().add(
                            const SendMessageEvent(
                              message: 'What is time in NY',
                            ),
                          ),
                      icon: const Icon(
                        Icons.send_outlined,
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else if (state is ChatErrorState) {
            return const ChatErrorScreen();
          }
          return const ChatErrorScreen();
        },
      ),
    );
  }
}
