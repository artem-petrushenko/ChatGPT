import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/repository/chats_db_repository.dart';
import 'package:chat_gpt/repository/chat_gpt_repository.dart';

import 'package:chat_gpt/screens/chat/model/chat_history_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.dart';

part 'chat_event.dart';

part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatGPTRepository chatGPTRepository;
  final ChatsDBRepository chatsDBRepository;

  ChatBloc({
    required this.chatGPTRepository,
    required this.chatsDBRepository,
  }) : super(const ChatState.loading()) {
    on<LoadingChatEvent>(_onLoadingChatEvent);
    on<CopyMessageEvent>(_onCopyMessageEvent);
    on<SendMessageEvent>(_onSendMessageEvent);
    on<RegenerateResponseEvent>(_onRegenerateResponseEvent);
  }

  void _onRegenerateResponseEvent(
      RegenerateResponseEvent event, Emitter<ChatState> emit) async {
    try {
      // emit(ChatState.success(history:));
      // emit(ChatState.success(chatHistoryModel.reversed.toList()));
    } catch (error) {
      emit(ChatState.failure(error: error));
    }
  }

  void _onCopyMessageEvent(
      CopyMessageEvent event, Emitter<ChatState> emit) async {
    Clipboard.setData(ClipboardData(text: event.message));
  }

  void _onSendMessageEvent(
      SendMessageEvent event, Emitter<ChatState> emit) async {

    try {
      _addDataToDatabase(ChatHistoryModel(name: 'user', message: event.message));
      final response = await chatGPTRepository.createChatCompletion(
        model: "gpt-3.5-turbo",
        messages: [
          <String, String>{'role': 'user', 'content': event.message}
        ],
        stream: false,
      );
      _addDataToDatabase(ChatHistoryModel(name: response.choices?.last.message?.role ?? '', message: response.choices?.last.message?.content ?? ''));
      emit(ChatState.success(history: [
        ChatHistoryModel(
            name: response.choices?.last.message?.role ?? '',
            message: response.choices?.last.message?.content ?? '')
      ]));
    } catch (error) {
      emit(ChatState.failure(error: error));
    }
  }

  void _onLoadingChatEvent(
      LoadingChatEvent event, Emitter<ChatState> emit) async {
    try {
      final history = await chatsDBRepository.getMessage();
      emit(history.isEmpty
          ? const ChatState.empty()
          : ChatState.success(history: history.reversed.toList()));
    } catch (error) {
      emit(ChatState.failure(error: error));
    }
  }

//
// Future<ChatCompletionModel> _sendMessage() async {
//   return await _chatGPTRepository.createChatCompletion(
//     model: "gpt-3.5-turbo",
//     messages: _chatHistoryModel
//         .map((e) => <String, String>{'role': e.name, 'content': e.message})
//         .toList(),
//     stream: false,
//   );
// }
//
  void _addDataToDatabase(ChatHistoryModel model) {
    chatsDBRepository.insertMessage(
        chatHistoryModel: ChatHistoryModel(
      name: model.name,
      message: model.message,
    ));
  }
//
// void _addDataToLocalDatabase(ChatHistoryModel model) {
//   _chatHistoryModel.add(ChatHistoryModel(
//     name: model.name,
//     message: model.message,
//   ));
// }
//
// void onChangeMessage(String text) {
//   message = text;
// }
}
