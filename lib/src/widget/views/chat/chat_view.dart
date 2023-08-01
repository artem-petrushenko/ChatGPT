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
          success: (uid, messages, hasResponse, hasReachedMax) =>
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
                  final bool showSenderName = index == messages.length - 1 ||
                      message.sender != messages[index + 1].sender;
                  if (index >= messages.length - 1) {
                    context.read<ChatBloc>().add(
                        ChatEvent.fetchMessages(messageId: message.messageId));
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (showSenderName)
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 16,
                              backgroundImage:
                                  NetworkImage(message.photoUrl ?? ''),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              message.senderName ?? '',
                            ),
                          ],
                        ),
                      Text(message.content),
                    ],
                  );
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
        success: (_, history, hasReachedMax, hasResponse) => Row(
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
