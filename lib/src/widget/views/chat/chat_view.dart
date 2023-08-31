import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

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
          iconSize: 16.0,
          icon: SvgPicture.asset(
            'assets/vector/back.svg',
            width: 16.0,
            height: 16.0,
          ),
        ),
        actions: [
          PopupMenuButton(
            iconSize: 20.0,
            icon: SvgPicture.asset(
              'assets/vector/more.svg',
              width: 20.0,
              height: 20.0,
            ),
            onOpened: () {
              HapticFeedback.vibrate();
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text('Rename'),
                onTap: () {},
              ),
            ],
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2.0),
          child: (state == const ChatState.loading())
              ? const LinearProgressIndicator(
                  minHeight: 2.0,
                  backgroundColor: Color(0x26000000),
                  color: Color(0xFF000000),
                )
              : Container(
                  color: const Color(0xFF000000),
                  width: double.infinity,
                  height: 2.0,
                ),
        ),
      ),
      body: Center(
        child: state.when(
          loading: () => const CircularProgressIndicator(),
          success: (uid, messages, hasResponse, hasReachedMax) => Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomScrollView(
                  reverse: true,
                  slivers: [
                    const SliverToBoxAdapter(child: SizedBox(height: 80.0)),
                    if (hasResponse)
                      const SliverPadding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        sliver: SliverToBoxAdapter(
                          child: Text('Await'),
                        ),
                      ),
                    SliverList.builder(
                      itemBuilder: (BuildContext context, int index) {
                        final message = messages[index];
                        final bool showSenderName =
                            index == messages.length - 1 ||
                                message.sender != messages[index + 1].sender;
                        if (index >= messages.length - 1) {
                          context.read<ChatBloc>().add(ChatEvent.fetchMessages(
                              messageId: message.messageId));
                        }
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (showSenderName)
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
                                        message.senderName ?? '',
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 19,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: (16.0 * 2 + 8.0)),
                              child: Text(
                                message.content,
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.69),
                                  fontSize: 15.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
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
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 2.0,
                      color: Color(0xFF000000),
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
                          decoration: const InputDecoration(
                            hintText: 'Message',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                            labelStyle: TextStyle(
                              color: Color(0xB0000000),
                              fontSize: 15.0,
                              fontFamily: 'Poppins',
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
                              ChatEvent.sendMessage(message: input.value.text));
                        },
                        child: const Icon(
                          Icons.send_rounded,
                          color: Color(0xFF000000),
                        ),
                      )
                    ],
                  ),
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
      // bottomNavigationBar: state.when(
      //   loading: () => const SizedBox.shrink(),
      //   success: (_, history, hasReachedMax, hasResponse) => Row(
      //     children: [
      //       Expanded(
      //         child: TextField(
      //           controller: input,
      //           cursorColor: const Color(0xFFFFFFFF),
      //           cursorHeight: 28.0,
      //           cursorWidth: 1.0,
      //           decoration: const InputDecoration(
      //             hintText: 'Enter text',
      //             border: InputBorder.none,
      //           ),
      //         ),
      //       ),
      //       const SizedBox(width: 8.0),
      //       GestureDetector(
      //         onTap: () => context
      //             .read<ChatBloc>()
      //             .add(ChatEvent.sendMessage(message: input.value.text)),
      //         child: const Icon(
      //           Icons.send_outlined,
      //           color: Color(0xFF000000),
      //         ),
      //       )
      //     ],
      //   ),
      //   empty: () => Row(
      //     children: [
      //       Expanded(
      //         child: TextField(
      //           controller: input,
      //           cursorColor: const Color(0xFFFFFFFF),
      //           cursorHeight: 28.0,
      //           cursorWidth: 1.0,
      //           decoration: const InputDecoration(
      //             hintText: 'Enter text',
      //             border: InputBorder.none,
      //           ),
      //         ),
      //       ),
      //       const SizedBox(width: 8.0),
      //       GestureDetector(
      //         onTap: () => context
      //             .read<ChatBloc>()
      //             .add(ChatEvent.sendMessage(message: input.value.text)),
      //         child: const Icon(
      //           Icons.send_outlined,
      //           color: Color(0xFFFFFFFF),
      //         ),
      //       )
      //     ],
      //   ),
      //   failure: (error) => const SizedBox.shrink(),
      // ),
    );
  }
}
