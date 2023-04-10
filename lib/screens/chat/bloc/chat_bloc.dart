import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/repository/chats_db_repository.dart';
import 'package:chat_gpt/repository/chat_gpt_repository.dart';

import 'package:chat_gpt/screens/chat/model/chat_history_model.dart';

part 'chat_state.dart';

part 'chat_event.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final _chatGPTRepository = ChatGPTRepository();
  final _chatsDBRepository = ChatsDBRepository();
  late List<ChatHistoryModel> _chatHistoryModel;
  String? message;

  ChatBloc() : super(ChatInitialState()) {
    on<LoadingChatEvent>((event, emit) async {
      emit(ChatLoadingState());
      _chatHistoryModel = await _chatsDBRepository.getMessage();
      emit(ChatLoadedState(_chatHistoryModel.isEmpty
          ? null
          : _chatHistoryModel.reversed.toList()));
    });
    on<CopyMessageEvent>((event, emit) async {
      Clipboard.setData(ClipboardData(text: event.message));
    });
    on<SendMessageEvent>((event, emit) async {
      try {
        _chatHistoryModel.add(ChatHistoryModel(
          name: 'user',
          message: message ?? '',
        ));
        _chatsDBRepository.insertMessage(
            chatHistoryModel: ChatHistoryModel(
          name: 'user',
          message: message ?? '',
        ));
        emit(ChatLoadedState(_chatHistoryModel.reversed.toList()));
        final chatCompletionModel =
            await _chatGPTRepository.createChatCompletion(
                model: "gpt-3.5-turbo",
                messages: _chatHistoryModel
                    .map((e) =>
                        <String, String>{'role': e.name, 'content': e.message})
                    .toList());
        _chatHistoryModel.add(
          ChatHistoryModel(
            name: chatCompletionModel.choices?.last.message?.role ?? '',
            message: chatCompletionModel.choices?.last.message?.content ?? '',
          ),
        );
        _chatsDBRepository.insertMessage(
          chatHistoryModel: ChatHistoryModel(
            name: chatCompletionModel.choices?.last.message?.role ?? '',
            message: chatCompletionModel.choices?.last.message?.content ?? '',
          ),
        );
        emit(ChatLoadedState(_chatHistoryModel.reversed.toList()));
      } catch (e) {
        emit(ChatErrorState(e));
      }
    }, transformer: sequential());
  }

  void onChangeMessage(String text) {
    message = text;
  }
}
