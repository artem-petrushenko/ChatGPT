import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:intl/intl.dart';
import 'package:go_router/go_router.dart';
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
        leading: IconButton(
          onPressed: () {
            HapticFeedback.vibrate();
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2.0),
          child: (state == const ChatState.loading())
              ? LinearProgressIndicator(
                  minHeight: 2.0,
                  backgroundColor: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.26),
                  color: Theme.of(context).colorScheme.onBackground,
                )
              : Container(
                  color: Theme.of(context).colorScheme.onBackground,
                  width: double.infinity,
                  height: 2.0,
                ),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Center(
            child: state.when(
              loading: () => const CircularProgressIndicator(),
              success: (uid, messages, hasReachedMax) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomScrollView(
                  reverse: true,
                  slivers: [
                    const SliverToBoxAdapter(child: SizedBox(height: 80.0)),
                    SliverList.builder(
                      itemBuilder: (BuildContext context, int index) {
                        final message = messages[index];
                        final bool showSenderName =
                            index == messages.length - 1 ||
                                message.sender != messages[index + 1].sender;
                        bool showDateDivider = false;
                        if (index < messages.length - 1) {
                          final nextMessage = messages[index + 1];
                          final currentDate = message.timestamp.toLocal().day;
                          final nextDate = nextMessage.timestamp.toLocal().day;
                          if (currentDate != nextDate) {
                            showDateDivider = true;
                          }
                        }

                        if (index >= messages.length - 1) {
                          context.read<ChatBloc>().add(ChatEvent.fetchMessages(
                              messageId: message.messageId));
                        }
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (showDateDivider || index == messages.length - 1)
                              Center(
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 4.0),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground
                                        .withOpacity(0.17),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                  ),
                                  child: Text(
                                    DateFormat()
                                        .add_MMMMd()
                                        .format(message.timestamp.toLocal()),
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground
                                          .withOpacity(0.67),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            if (showSenderName || showDateDivider)
                              Column(
                                children: [
                                  const SizedBox(height: 16.0),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 16.0,
                                        backgroundImage: NetworkImage(
                                            message.photoUrl ?? ''),
                                      ),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        (message.senderName ?? '')
                                            .toUpperCase(),
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: (16.0 * 2 + 8.0), bottom: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTapDown: (TapDownDetails details) {
                                      HapticFeedback.vibrate();
                                      showMenu(
                                        context: context,
                                        position: RelativeRect.fromLTRB(
                                          details.localPosition.dx,
                                          details.localPosition.dy,
                                          details.localPosition.dx + 100,
                                          details.localPosition.dy + 40,
                                        ),
                                        items: [
                                          PopupMenuItem(
                                            child: const Text('Remove'),
                                            onTap: () {
                                              HapticFeedback.vibrate();
                                              context.read<ChatBloc>().add(
                                                    ChatEvent.removeMessage(
                                                      messageId:
                                                          message.messageId,
                                                    ),
                                                  );
                                            },
                                          ),
                                          PopupMenuItem(
                                            child: const Text('Copy'),
                                            onTap: (){
                                              HapticFeedback.vibrate();
                                              Clipboard.setData(
                                                  ClipboardData(text: message.content));
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                const SnackBar(
                                                  content: Text(
                                                      'Message Copping to Clipboard'),
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                    child: Text(
                                      message.content,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground
                                            .withOpacity(0.69),
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    DateFormat()
                                        .add_jm()
                                        .format(message.timestamp.toLocal())
                                        .toString(),
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground
                                          .withOpacity(0.67),
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: messages.length,
                    ),
                    if (!hasReachedMax)
                      const SliverToBoxAdapter(
                        child: Center(child: CircularProgressIndicator()),
                      ),
                    const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
                  ],
                ),
              ),
              empty: () => const Text(
                'Ask anything, get your answer',
              ),
              failure: (error) => TextButton(
                onPressed: () {
                  HapticFeedback.vibrate();
                  context
                      .read<ChatBloc>()
                      .add(const ChatEvent.fetchMessages(messageId: ''));
                },
                child: const Text('Try Again'),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              border: Border(
                top: BorderSide(
                  width: 2.0,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 4.0,
                bottom: 8.0,
                right: 16.0,
                left: 16.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: input,
                      cursorRadius: const Radius.circular(4.0),
                      cursorColor: const Color(0xFF000000),
                      cursorWidth: 2.0,
                      decoration: InputDecoration(
                        hintText: 'Message',
                        hintStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                        labelStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  GestureDetector(
                    onTap: () {
                      HapticFeedback.vibrate();
                      context.read<ChatBloc>().add(
                            ChatEvent.sendMessage(message: input.value.text),
                          );
                      input.clear();
                    },
                    child: Icon(
                      Icons.send_rounded,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
