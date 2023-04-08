import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/screens/chat/bloc/chat_bloc.dart';

import 'package:chat_gpt/screens/chat/screens/chat_error_screen.dart';
import 'package:chat_gpt/screens/chat/screens/chat_loading_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatBloc()..add(const LoadingChatEvent()),
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
              resizeToAvoidBottomInset: true,
              appBar: AppBar(
                flexibleSpace: const FlexibleSpaceBar(
                  background: ColoredBox(
                    color: Color(0xFF343541),
                  ),
                ),
                backgroundColor: const Color(0xFF343541),
                title: Text(
                  'ChatGPT',
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w600,
                    height: 1.17375,
                    fontSize: 16.0,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(1.0),
                  child: Container(
                    color: const Color(0x66FFFFFF),
                    height: 1.0,
                  ),
                ),
              ),
              backgroundColor: const Color(0xFF343541),
              bottomNavigationBar: Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 12.0, bottom: 20.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color(0x1AFFFFFF),
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all(
                    color: const Color(0x52FFFFFF),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (String message) =>
                            context.read<ChatBloc>().onChangeMessage(message),
                        cursorColor: const Color(0xFFFFFFFF),
                        cursorHeight: 28.0,
                        cursorWidth: 1.0,
                        decoration: InputDecoration(
                          labelStyle: GoogleFonts.raleway(
                            color: const Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            height: 1.17375,
                          ),
                          hintText: 'Enter text',
                          hintStyle: GoogleFonts.raleway(
                            color: const Color(0x66FFFFFF),
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            height: 1.17375,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    GestureDetector(
                      onTap: () => context
                          .read<ChatBloc>()
                          .add(const SendMessageEvent()),
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
              body: Stack(
                children: [
                  ListView.builder(
                    reverse: true,
                    itemBuilder: (BuildContext context, int index) {
                      return state.chatHistoryModel?[index].name == 'user'
                          ? Container(
                              margin: const EdgeInsets.only(
                                left: 88.0,
                                right: 20.0,
                                top: 4.0,
                                bottom: 16.0,
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
                                '${state.chatHistoryModel?[index].message} ',
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                  fontSize: 16.0,
                                  color: const Color(0xFFFFFFFF),
                                ),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 88.0,
                                top: 4.0,
                                bottom: 16.0,
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
                                      '${state.chatHistoryModel?[index].message} ',
                                      style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.w600,
                                        height: 1.5,
                                        fontSize: 16.0,
                                        color: const Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 14.0),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.copy_sharp,
                                        color: Color(0x52FFFFFF),
                                        size: 12.0,
                                      ),
                                      const SizedBox(width: 12.0),
                                      Text(
                                        'Copy',
                                        style: GoogleFonts.raleway(
                                          fontWeight: FontWeight.w600,
                                          height: 1.1742,
                                          fontSize: 14.0,
                                          color: const Color(0x52FFFFFF),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                    },
                    itemCount: state.chatHistoryModel?.length ?? 0,
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
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
                          child: Row(children:  [
                            const Icon(Icons.play_circle_outline_outlined, weight: 11.0, color: Color(0xFFFFFFFF),),
                            const SizedBox(width: 10.0),
                            Text(
                              'Regenerate response',
                              style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w500,
                                height: 1.1742,
                                fontSize: 14.0,
                                color: const Color(0xFFFFFFFF),
                              ),
                            )
                          ]),
                        ),
                      ],
                    ),
                  ),
                ],
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
