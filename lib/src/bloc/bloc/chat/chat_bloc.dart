import 'package:chat_gpt/src/data/repository/conversations/conversations_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chat_gpt/src/data/repository/user/user_repository.dart';
import 'package:chat_gpt/src/data/repository/chat/chat_repository.dart';

import 'package:chat_gpt/src/model/message/message_model.dart';

part 'chat_state.dart';

part 'chat_event.dart';

part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository _chatRepository;
  final UserRepository _userRepository;
  final ConversationsRepository _conversationsRepository;
  final String _conversationId;

  ChatBloc({
    required String id,
    required ChatRepository chatRepository,
    required UserRepository userRepository,
    required ConversationsRepository conversationsRepository,
  })  : _chatRepository = chatRepository,
        _userRepository = userRepository,
        _conversationsRepository = conversationsRepository,
        _conversationId = id,
        super(const ChatState.loading()) {
    on<_FetchMessagesEvent>(_onFetchMessagesEvent, transformer: droppable());
    on<ChatEvent>(
      (ChatEvent event, Emitter<ChatState> emit) =>
          event.mapOrNull<Future<void>>(
        sendMessage: (event) => _onSendMessageEvent(event, emit),
        removeMessage: (event) => _onRemoveMessageEvent(event, emit),
      ),
      transformer: sequential(),
    );
  }

  Future<void> _onSendMessageEvent(
    _SendMessageEvent event,
    Emitter<ChatState> emit,
  ) async {
    try {
      final uid = _userRepository.getCurrentUID();
      await _chatRepository.sendMessage(
        uid: uid,
        message: event.message,
        conversationId: _conversationId,
      );
      await _conversationsRepository.updateConversationDate(
          id: _conversationId);
    } catch (error) {
      emit(ChatState.failure(error: error));
    }
  }

  Future<void> _onRemoveMessageEvent(
    _RemoveMessageEvent event,
    Emitter<ChatState> emit,
  ) async {
    try {
      await _chatRepository.removeMessage(messageId: event.messageId);
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
      final messagesWithSenderNames = <MessageModel>[];
      for (final messageDoc in messages) {
        final senderId = messageDoc.sender;
        final sender = await _userRepository.getUser(uid: senderId);
        final messageWithSenderName = messageDoc.copyWith(
          senderName: sender.username,
          photoUrl: sender.photoUrl,
        );
        messagesWithSenderNames.add(messageWithSenderName);
      }
      if (state is _ChatSuccessState) {
        if ((state as _ChatSuccessState).hasReachedMax) return;
        emit(messagesWithSenderNames.isEmpty
            ? (state as _ChatSuccessState).copyWith(hasReachedMax: true)
            : (state as _ChatSuccessState).copyWith(
                hasReachedMax: false,
                messages: (state as _ChatSuccessState).messages +
                    messagesWithSenderNames));
      } else {
        final newState = messages.isEmpty
            ? const ChatState.empty()
            : ChatState.success(
                userId: uid,
                messages: messagesWithSenderNames,
                hasReachedMax: false,
              );
        emit(newState);
      }
    } catch (error) {
      emit(ChatState.failure(error: error));
    }
  }
}
