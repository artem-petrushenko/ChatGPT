import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:chat_gpt/src/data/repository/conversations/conversations_repository.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chat_gpt/src/model/conversation/conversation_model.dart';
import 'package:chat_gpt/src/data/repository/user/user_repository.dart';

part 'conversations_event.dart';

part 'conversations_state.dart';

part 'conversations_bloc.freezed.dart';

class ConversationsBloc extends Bloc<ConversationsEvent, ConversationsState> {
  final UserRepository _userRepository;
  final ConversationsRepository _conversationsRepository;

  ConversationsBloc({
    required UserRepository userRepository,
    required ConversationsRepository conversationsRepository,
  })  : _userRepository = userRepository,
        _conversationsRepository = conversationsRepository,
        super(const ConversationsState.loading()) {
    on<_FetchConversations>(_onFetchConversations, transformer: droppable());
    on<ConversationsEvent>(
      (event, emit) => event.mapOrNull<Future<void>>(
        createConversation: (event) => _onCreateConversation(event, emit),
        removeConversation: (event) => _onRemoveConversation(event, emit),
      ),
      transformer: concurrent(),
    );
  }

  Future<void> _onFetchConversations(
    _FetchConversations event,
    Emitter<ConversationsState> emit,
  ) async {
    try {
      final uid = _userRepository.getCurrentUID();
      final chats = await _conversationsRepository.fetchConversations(
          uid: uid, id: event.id);
      if (state is _ConversationsSuccessState) {
        if ((state as _ConversationsSuccessState).hasReachedMax) return;
        emit(chats.isEmpty
            ? (state as _ConversationsSuccessState)
                .copyWith(hasReachedMax: true)
            : (state as _ConversationsSuccessState).copyWith(
                hasReachedMax: false,
                conversations:
                    (state as _ConversationsSuccessState).conversations +
                        chats));
      } else {
        final newState = chats.isEmpty
            ? const ConversationsState.empty()
            : ConversationsState.success(
                conversations: chats, hasReachedMax: false);
        emit(newState);
      }
    } catch (error) {
      emit(ConversationsState.failure(error: error));
    }
  }

  Future<void> _onCreateConversation(
    _CreateConversation event,
    Emitter<ConversationsState> emit,
  ) async {
    try {
      final uid = _userRepository.getCurrentUID();
      await _conversationsRepository.createConversation(
          uid: uid, name: event.name);
      final chats =
          await _conversationsRepository.fetchConversations(uid: uid, id: '');
      final newState = chats.isEmpty
          ? const ConversationsState.empty()
          : ConversationsState.success(
              conversations: chats, hasReachedMax: false);
      emit(newState);
    } catch (error) {
      emit(ConversationsState.failure(error: error));
    }
  }

  Future<void> _onRemoveConversation(
    _RemoveConversation event,
    Emitter<ConversationsState> emit,
  ) async {
    try {
      final uid = _userRepository.getCurrentUID();
      await _conversationsRepository.removeConversation(uid: uid, id: event.id);
      final chats =
          await _conversationsRepository.fetchConversations(uid: uid, id: '');
      final newState = chats.isEmpty
          ? const ConversationsState.empty()
          : ConversationsState.success(
              conversations: chats, hasReachedMax: false);
      emit(newState);
    } catch (error) {
      emit(ConversationsState.failure(error: error));
    }
  }
}
