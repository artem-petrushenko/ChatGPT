import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/theme/chat_gpt_text_styles.dart';

import 'package:chat_gpt/screens/chat/bloc/chat_bloc.dart';

part '../widgets/user_message_widget.dart';

part '../widgets/response_message_widget.dart';

class ChatLoadedScreen extends StatelessWidget {
  const ChatLoadedScreen({
    super.key,
    required this.state,
  });

  final ChatLoadedState state;

  @override
  Widget build(BuildContext context) {
    // final model = context.select((ChatLoadedState value) => value.chatHistoryModel);
    return Stack(
      children: [
        state.chatHistoryModel?.length != null
            ? Stack(
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
                      final message = state.chatHistoryModel?[index];
                      return message?.name == 'user'
                          ? _UserMessageWidget(message: message?.message ?? '')
                          : _ChatMessageWidget(message: message?.message ?? '');
                    },
                    itemCount: state.chatHistoryModel?.length ?? 0,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(height: 16.0),
                  ),
                  if (state.chatHistoryModel?.first.name == 'assistant')
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 100.0,
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
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(4.0))),
                            child: Row(
                              children: const [
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
                ],
              )
            : const Center(
                child: Text(
                  'Ask anything, get your answer',
                  style: ChatGptTextStyles.textStyle1,
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
                    onTap: () =>
                        context.read<ChatBloc>().add(const SendMessageEvent()),
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
    );
  }
}
