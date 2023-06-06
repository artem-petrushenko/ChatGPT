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
    // on<SendMessageEvent>(_onSendMessageEvent, transformer: sequential());
    on<RegenerateResponseEvent>(_onRegenerateResponseEvent);
  }

  void _onRegenerateResponseEvent(RegenerateResponseEvent event,
      Emitter<ChatState> emit) async {
    try {
      // var a = state.when(
      //   loading: () {},
      //   success: (list) =>
      //       ChatState.success(chatHistoryModel: list.reversed.toList()),
      //   empty: () {},
      //   failure: (e) {},
      // );
      // emit(ChatState.success(chatHistoryModel: ));
      // emit(ChatState.success(chatHistoryModel.reversed.toList()));
    } catch (error) {
      emit(ChatState.failure(error: error));
    }
  }

  void _onCopyMessageEvent(CopyMessageEvent event,
      Emitter<ChatState> emit) async {
    Clipboard.setData(ClipboardData(text: event.message));
  }

// void _onSendMessageEvent(
//     SendMessageEvent event, Emitter<ChatState> emit) async {
//   try {
//     final userMessage =
//         ChatHistoryModel(name: 'user', message: message ?? '');
//     _addDataToLocalDatabase(userMessage);
//     _addDataToDatabase(userMessage);
//     emit(ChatLoadedState(_chatHistoryModel.reversed.toList()));
//     final chatCompletionModel = await _sendMessage();
//     final requestMessage = userMessage.copyWith(
//       name: chatCompletionModel.choices?.last.message?.role ?? '',
//       message: chatCompletionModel.choices?.last.message?.content ?? '',
//     );
//     _addDataToLocalDatabase(requestMessage);
//     _addDataToDatabase(requestMessage);
//     emit(ChatLoadedState(_chatHistoryModel.reversed.toList()));
//   } catch (e) {
//     emit(ChatErrorState(e));
//   }
// }
//
  void _onLoadingChatEvent(LoadingChatEvent event,
      Emitter<ChatState> emit) async {
    try {
      final chatHistoryModel = await chatsDBRepository.getMessage();
      emit(chatHistoryModel.isEmpty
          ? const ChatState.empty()
          : ChatState.success(
          chatHistoryModel: chatHistoryModel.reversed.toList()));
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
// void _addDataToDatabase(ChatHistoryModel model) {
//   _chatsDBRepository.insertMessage(
//       chatHistoryModel: ChatHistoryModel(
//     name: model.name,
//     message: model.message,
//   ));
// }
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
