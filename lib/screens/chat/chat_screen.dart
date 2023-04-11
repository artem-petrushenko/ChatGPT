import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/theme/chat_gpt_text_styles.dart';

import 'package:chat_gpt/screens/chat/bloc/chat_bloc.dart';

import 'package:chat_gpt/screens/chat/screens/chat_error_screen.dart';
import 'package:chat_gpt/screens/chat/screens/chat_loading_screen.dart';
import 'package:chat_gpt/screens/chat/screens/chat_loaded_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF343541),
      appBar: AppBar(
        flexibleSpace: const FlexibleSpaceBar(
          background: ColoredBox(
            color: Color(0xFF343541),
          ),
        ),
        backgroundColor: const Color(0xFF343541),
        title: const Text(
          'ChatGPT',
          style: ChatGptTextStyles.textStyle6,
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: const Color(0x66FFFFFF),
            height: 1.0,
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => ChatBloc()..add(const LoadingChatEvent()),
        child: BlocConsumer<ChatBloc, ChatState>(
          listener: (context, state) {
            switch (state.runtimeType) {
              case ChatErrorState:
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text('An error has occurred. Try later '),
                  ),
                );
                break;
            }
          },
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
              return ChatLoadedScreen(state: state);
            } else if (state is ChatErrorState) {
              return const ChatErrorScreen();
            }
            return const ChatLoadingScreen();
          },
        ),
      ),
    );
  }
}
