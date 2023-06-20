import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chat_gpt/model/chat_history_model.dart';

import 'package:chat_gpt/data/repository/chat_gpt_repository.dart';

part 'chat_state.dart';

part 'chat_event.dart';

part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatGPTRepository chatGPTRepository;

  ChatBloc({
    required this.chatGPTRepository,
  }) : super(const ChatState.loading()) {
    on<ChatEvent>(
      (ChatEvent event, Emitter<ChatState> emit) => event.map<Future<void>>(
        loadingChat: (event) => _onLoadingChatEvent(event, emit),
        sendMessage: (event) => _onSendMessageEvent(event, emit),
        copyMessage: (event) => _onCopyMessageEvent(event, emit),
        regenerateResponse: (event) => _onRegenerateResponseEvent(event, emit),
      ),
      transformer: sequential(),
    );
  }

  Future<void> _onRegenerateResponseEvent(
      RegenerateResponseEvent event, Emitter<ChatState> emit) async {
    try {
      // emit(ChatState.success(history:));
      // emit(ChatState.success(chatHistoryModel.reversed.toList()));
    } catch (error) {
      emit(ChatState.failure(error: error));
    }
  }

  Future<void> _onCopyMessageEvent(
      CopyMessageEvent event, Emitter<ChatState> emit) async {
    Clipboard.setData(ClipboardData(text: event.message));
  }

  Future<void> _onSendMessageEvent(
      SendMessageEvent event, Emitter<ChatState> emit) async {
    try {
      final userMessage =
          ChatHistoryModel(name: 'user', message: event.message);
      if (state is _ChatSuccessState) {
        emit((state as _ChatSuccessState).copyWith(
            hasResponse: false,
            history: List<ChatHistoryModel>.from(
                (state as _ChatSuccessState).history)
              ..insert(0, userMessage)));
      } else {
        emit(ChatState.success(history: [userMessage], hasResponse: false));
      }
      _addDataToDatabase(userMessage);
      final message = List<ChatHistoryModel>.from(
              (state as _ChatSuccessState).history)
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
      final newState = (state as _ChatSuccessState).copyWith(
          history:
              List<ChatHistoryModel>.from((state as _ChatSuccessState).history)
                ..insert(0, responseMessage),
          hasResponse: true);
      _addDataToDatabase(responseMessage);
      emit(newState);
    } catch (error) {
      emit(ChatState.failure(error: error));
    }
  }

  Future<void> _onLoadingChatEvent(
      LoadingChatEvent event, Emitter<ChatState> emit) async {
    try {
      final history = await chatGPTRepository.getHistory();
      emit(history.isEmpty
          ? const ChatState.empty()
          : ChatState.success(
              history: history.reversed.toList(), hasResponse: true));
    } catch (error) {
      emit(ChatState.failure(error: error));
    }
  }

  void _addDataToDatabase(ChatHistoryModel model) {
    chatGPTRepository.addHistory(
        chatHistoryModel: ChatHistoryModel(
      name: model.name,
      message: model.message,
    ));
  }
}
