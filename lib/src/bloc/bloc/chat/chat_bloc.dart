import 'package:chat_gpt/src/data/repository/message/message_repository.dart';
import 'package:chat_gpt/src/data/repository/user/user_repository.dart';
import 'package:chat_gpt/src/model/user/user_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chat_gpt/src/model/message/message_model.dart';
import 'package:chat_gpt/src/data/repository/chat/chat_repository.dart';

part 'chat_state.dart';

part 'chat_event.dart';

part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository _chatRepository;
  final UserRepository _userRepository;
  final MessageRepository _messageRepository;
  final String _conversationId;

  ChatBloc({
    required String id,
    required ChatRepository chatRepository,
    required MessageRepository messageRepository,
    required UserRepository userRepository,
  })  : _chatRepository = chatRepository,
        _userRepository = userRepository,
        _messageRepository = messageRepository,
        _conversationId = id,
        super(const ChatState.loading()) {
    on<_FetchMessagesEvent>(_onFetchMessagesEvent, transformer: droppable());
    on<ChatEvent>(
      (ChatEvent event, Emitter<ChatState> emit) =>
          event.mapOrNull<Future<void>>(
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
      final uid = _userRepository.getCurrentUID();
      await _chatRepository.sendMessage(
        uid: uid,
        message: event.message,
        conversationId: _conversationId,
      );
      // final userMessage = MessageModel(
      //   senderId: 'user',
      //   message: event.message,
      //   timestamp: DateTime.now().millisecondsSinceEpoch,
      //   id: '',
      // );
      // if (state is _ChatSuccessState) {
      //   emit((state as _ChatSuccessState).copyWith(
      //       hasResponse: false,
      //       messages:
      //           List<MessageModel>.from((state as _ChatSuccessState).messages)
      //             ..insert(0, userMessage)));
      // } else {
      //   emit(ChatState.success(history: [userMessage], hasResponse: false));
      // }
      // _addDataToDatabase(userMessage);
      // final message =
      //     List<MessageModel>.from((state as _ChatSuccessState).messages)
      //         .map((e) =>
      //             <String, String>{'role': 'user', 'content': event.message})
      //         .toList()
      //         .reversed
      //         .toList();
      final response = await _messageRepository.createChatCompletion(
        model: "gpt-3.5-turbo-16k",
        messages: [
          <String, String>{
            'role': 'user',
            'content': event.message,
          },
        ],
        stream: false,
      );
      await _chatRepository.sendMessage(
        uid: '5RQm9oiOX6tpXyKkhudk',
        message: response.choices?.last.message?.content ?? '',
        conversationId: _conversationId,
      );
      // final responseMessage = MessageModel(
      //   senderId: response.choices?.last.message?.role ?? '',
      //   message: response.choices?.last.message?.content ?? '',
      //   timestamp: DateTime.now().millisecondsSinceEpoch,
      //   id: '',
      // );
      // final newState = (state as _ChatSuccessState).copyWith(
      //     history: List<MessageModel>.from((state as _ChatSuccessState).history)
      //       ..insert(0, responseMessage),
      //     hasResponse: true);
      // _addDataToDatabase(responseMessage);
      // emit(newState);
    } catch (error) {
      emit(ChatState.failure(error: error));
    }
  }

  Future<void> _onFetchMessagesEvent(
    _FetchMessagesEvent event,
    Emitter<ChatState> emit,
  ) async {
    try {
      final uid = _userRepository.getCurrentUID();
      final messages = await _chatRepository.getHistory(
        messageId: event.messageId,
        conversationId: _conversationId,
      );
      if (state is _ChatSuccessState) {
        if ((state as _ChatSuccessState).hasReachedMax) return;
        emit(messages.isEmpty
            ? (state as _ChatSuccessState).copyWith(hasReachedMax: true)
            : (state as _ChatSuccessState).copyWith(
                hasReachedMax: false,
                messages: (state as _ChatSuccessState).messages + messages));
      } else {
        final newState = messages.isEmpty
            ? const ChatState.empty()
            : ChatState.success(
                userId: uid,
                messages: messages,
                hasReachedMax: false,
                hasResponse: false,
              );
        emit(newState);
      }
    } catch (error) {
      emit(ChatState.failure(error: error));
    }
  }

// void _addDataToDatabase(MessageModel model) {
//   _chatRepository.addHistory(
//       chatHistoryModel: MessageModel(
//     receiverId: model.receiverId,
//     message: model.message,
//     timestamp: DateTime.now().millisecondsSinceEpoch,
//     id: '',
//   ));
// }
}
