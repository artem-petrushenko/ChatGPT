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
      final userMessage =
          ChatHistoryModel(name: 'user', message: event.message);
      late final List<ChatHistoryModel> newHistory;
      if (state is _ChatSuccessState) {
        newHistory =
            List<ChatHistoryModel>.from((state as _ChatSuccessState).history)
              ..insert(0, userMessage);
      } else {
        newHistory = <ChatHistoryModel>[]..insert(0, userMessage);
      }
      _addDataToDatabase(userMessage);
      emit(ChatState.success(history: newHistory, hasResponse: false));
      final message = newHistory
          .map((e) => <String, String>{'role': e.name, 'content': e.message})
          .toList()
          .reversed
          .toList();
      final response = await chatGPTRepository.createChatCompletion(
        model: "gpt-3.5-turbo",
        messages: message,
        stream: false,
      );
      final responseMessage = ChatHistoryModel(
          name: response.choices?.last.message?.role ?? '',
          message: response.choices?.last.message?.content ?? '');
      final newNewHistory =
          List<ChatHistoryModel>.from((state as _ChatSuccessState).history)
            ..insert(0, responseMessage);
      _addDataToDatabase(responseMessage);
      emit(ChatState.success(history: newNewHistory, hasResponse: true));
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
          : ChatState.success(
              history: history.reversed.toList(), hasResponse: true));
    } catch (error) {
      emit(ChatState.failure(error: error));
    }
  }

  void _addDataToDatabase(ChatHistoryModel model) {
    chatsDBRepository.insertMessage(
        chatHistoryModel: ChatHistoryModel(
      name: model.name,
      message: model.message,
    ));
  }
}
