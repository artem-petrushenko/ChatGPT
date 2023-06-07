import 'package:chat_gpt/presentation/blocs/blocs/chat/chat_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/theme/chat_gpt_text_styles.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final input = TextEditingController();
    final state = context.watch<ChatBloc>().state;
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
      body: Center(
        child: state.when(
          loading: () => const CircularProgressIndicator(),
          success: (chat) => Stack(
            children: [
              ListView.separated(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 12.0,
                  bottom: 120.0,
                ),
                reverse: true,
                itemBuilder: (BuildContext context, int index) {
                  final message = chat[index];
                  return message.name == 'user'
                      ? _UserMessageWidget(message: message.message)
                      : _ChatMessageWidget(message: message.message);
                },
                itemCount: chat.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(height: 16.0),
              ),
              if (chat.first.name == 'assistant')
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 100.0,
                  child: GestureDetector(
                    onTap: () => context.read<ChatBloc>()
                      ..add(
                        RegenerateResponseEvent(message: chat.last.message),
                      ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 13.0, vertical: 7.0),
                          decoration: BoxDecoration(
                              color: const Color(0xFF202123),
                              border: Border.all(
                                color: const Color(0x33FFFFFF),
                                width: 1.0,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4.0))),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.play_circle_outline_outlined,
                                weight: 11.0,
                                color: Color(0xFFFFFFFF),
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                'Regenerate response',
                                style: ChatGptTextStyles.textStyle2,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Positioned(
                left: 20.0,
                right: 20.0,
                bottom: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    color: Color(0xFF343541),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: const Color(0x1AFFFFFF),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                      border: Border.all(
                        color: const Color(0x52FFFFFF),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: input,
                            cursorColor: const Color(0xFFFFFFFF),
                            cursorHeight: 28.0,
                            cursorWidth: 1.0,
                            decoration: const InputDecoration(
                              labelStyle: ChatGptTextStyles.textStyle6,
                              hintText: 'Enter text',
                              hintStyle: ChatGptTextStyles.textStyle5,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        GestureDetector(
                          onTap: () => context
                              .read<ChatBloc>()
                              .add(SendMessageEvent(message: input.value.text)),
                          child: Container(
                            padding: const EdgeInsets.all(9.67),
                            decoration: const BoxDecoration(
                              color: Color(0xFF10A37F),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                            child: const Icon(
                              Icons.send_outlined,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          empty: () => Column(
            children: [
              const Text(
                'Ask anything, get your answer',
                style: ChatGptTextStyles.textStyle1,
              ),
              Positioned(
                left: 20.0,
                right: 20.0,
                bottom: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                    color: Color(0xFF343541),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: const Color(0x1AFFFFFF),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(8.0)),
                      border: Border.all(
                        color: const Color(0x52FFFFFF),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: input,
                            cursorColor: const Color(0xFFFFFFFF),
                            cursorHeight: 28.0,
                            cursorWidth: 1.0,
                            decoration: const InputDecoration(
                              labelStyle: ChatGptTextStyles.textStyle6,
                              hintText: 'Enter text',
                              hintStyle: ChatGptTextStyles.textStyle5,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        GestureDetector(
                          onTap: () => context
                              .read<ChatBloc>()
                              .add(SendMessageEvent(message: input.value.text)),
                          child: Container(
                            padding: const EdgeInsets.all(9.67),
                            decoration: const BoxDecoration(
                              color: Color(0xFF10A37F),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                            child: const Icon(
                              Icons.send_outlined,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          failure: (error) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.bolt_outlined,
                  color: Theme.of(context).colorScheme.error,
                  size: 72.0,
                ),
                const SizedBox(height: 32.0),
                Text(
                  'Sorry, an unexpected error occurred',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 4.0,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32.0),
                TextButton(onPressed: () {}, child: const Text('Try Again'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _UserMessageWidget extends StatelessWidget {
  const _UserMessageWidget({
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 88.0,
      ),
      padding: const EdgeInsets.all(12.0),
      decoration: const BoxDecoration(
        color: Color(0xFF10A37F),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
          bottomLeft: Radius.circular(8.0),
        ),
      ),
      child: Text(
        '$message ',
        style: ChatGptTextStyles.textStyle4,
      ),
    );
  }
}

class _ChatMessageWidget extends StatelessWidget {
  const _ChatMessageWidget({
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ChatBloc>();
    return Padding(
      padding: const EdgeInsets.only(
        right: 88.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: const BoxDecoration(
              color: Color(0x33FFFFFF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
            ),
            child: Text(
              '$message ',
              style: ChatGptTextStyles.textStyle4,
            ),
          ),
          const SizedBox(height: 14.0),
          GestureDetector(
            onTap: () => bloc.add(CopyMessageEvent(message: message)),
            child: const Row(
              children: [
                Icon(
                  Icons.copy_sharp,
                  color: Color(0x52FFFFFF),
                  size: 12.0,
                ),
                SizedBox(width: 12.0),
                Text(
                  'Copy',
                  style: ChatGptTextStyles.textStyle3,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
