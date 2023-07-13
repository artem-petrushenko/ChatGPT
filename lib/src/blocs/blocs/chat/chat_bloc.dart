import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chat_gpt/src/models/chat_history_model.dart';

import 'package:chat_gpt/src/data/repository/chat_repository.dart';

part 'chat_state.dart';

part 'chat_event.dart';

part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository _chatRepository;

  ChatBloc({
    required ChatRepository chatRepository,
  })  : _chatRepository = chatRepository,
        super(const ChatState.loading()) {
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
      _RegenerateResponseEvent event, Emitter<ChatState> emit) async {
    try {
      // emit(ChatState.success(history:));
      // emit(ChatState.success(chatHistoryModel.reversed.toList()));
    } catch (error) {
      emit(ChatState.failure(error: error));
    }
  }

  Future<void> _onCopyMessageEvent(
      _CopyMessageEvent event, Emitter<ChatState> emit) async {
    Clipboard.setData(ClipboardData(text: event.message));
  }

  Future<void> _onSendMessageEvent(
      _SendMessageEvent event, Emitter<ChatState> emit) async {
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
      final response = await _chatRepository.createChatCompletion(
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
      _LoadingChatEvent event, Emitter<ChatState> emit) async {
    try {
      final history = await _chatRepository.getHistory();
      emit(history.isEmpty
          ? const ChatState.empty()
          : ChatState.success(
              history: history.reversed.toList(), hasResponse: true));
    } catch (error) {
      emit(ChatState.failure(error: error));
    }
  }

  void _addDataToDatabase(ChatHistoryModel model) {
    _chatRepository.addHistory(
        chatHistoryModel: ChatHistoryModel(
      name: model.name,
      message: model.message,
    ));
  }
}
