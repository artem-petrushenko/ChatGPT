import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/src/bloc/bloc/chat/chat_bloc.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final input = TextEditingController();
    final state = context.watch<ChatBloc>().state;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('ChatGPT'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text('Rename'),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: state.when(
          loading: () => const CircularProgressIndicator(),
          success: (messages, hasResponse, hasReachedMax) => Stack(
            children: [
              CustomScrollView(
                reverse: true,
                slivers: [
                  if (hasResponse)
                    const SliverPadding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      sliver: SliverToBoxAdapter(
                        child: Text('Await'),
                      ),
                    ),
                  SliverList.separated(
                    itemBuilder: (BuildContext context, int index) {
                      final message = messages[index];
                      if (index >= messages.length - 1) {
                        context.read<ChatBloc>().add(ChatEvent.fetchMessages(
                            messageId: message.messageId));
                      }
                      return Text(message.content);
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(height: 16.0),
                    itemCount: messages.length,
                  ),
                  if (!hasReachedMax)
                    const SliverToBoxAdapter(
                      child: Center(child: CircularProgressIndicator()),
                    ),
                ],
              ),
              if (messages.first.sender == 'assistant')
                GestureDetector(
                  onTap: () => context.read<ChatBloc>()
                    ..add(ChatEvent.regenerateResponse(
                        message: messages.last.content)),
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
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          empty: () => const Text(
            'Ask anything, get your answer',
          ),
          failure: (error) => TextButton(
            onPressed: () => context
                .read<ChatBloc>()
                .add(const ChatEvent.fetchMessages(messageId: '')),
            child: const Text('Try Again'),
          ),
        ),
      ),
      bottomNavigationBar: state.when(
        loading: () => const SizedBox.shrink(),
        success: (history, hasReachedMax, hasResponse) => Row(
          children: [
            Expanded(
              child: TextField(
                controller: input,
                cursorColor: const Color(0xFFFFFFFF),
                cursorHeight: 28.0,
                cursorWidth: 1.0,
                decoration: const InputDecoration(
                  hintText: 'Enter text',
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            GestureDetector(
              onTap: () => context
                  .read<ChatBloc>()
                  .add(ChatEvent.sendMessage(message: input.value.text)),
              child: const Icon(
                Icons.send_outlined,
                color: Color(0xFFFFFFFF),
              ),
            )
          ],
        ),
        empty: () => Row(
          children: [
            Expanded(
              child: TextField(
                controller: input,
                cursorColor: const Color(0xFFFFFFFF),
                cursorHeight: 28.0,
                cursorWidth: 1.0,
                decoration: const InputDecoration(
                  hintText: 'Enter text',
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            GestureDetector(
              onTap: () => context
                  .read<ChatBloc>()
                  .add(ChatEvent.sendMessage(message: input.value.text)),
              child: const Icon(
                Icons.send_outlined,
                color: Color(0xFFFFFFFF),
              ),
            )
          ],
        ),
        failure: (error) => const SizedBox.shrink(),
      ),
    );
  }
}
