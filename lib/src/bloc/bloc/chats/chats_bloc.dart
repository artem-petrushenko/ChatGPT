import 'package:bloc_concurrency/bloc_concurrency.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chat_gpt/src/model/conversation/conversation_model.dart';
import 'package:chat_gpt/src/data/repository/chats/chats_repository.dart';
import 'package:chat_gpt/src/data/repository/user/user_repository.dart';

part 'chats_event.dart';

part 'chats_state.dart';

part 'chats_bloc.freezed.dart';

class ChatsBloc extends Bloc<ChatsEvent, ChatsState> {
  final UserRepository _userRepository;
  final ChatsRepository _chatsRepository;

  ChatsBloc({
    required UserRepository userRepository,
    required ChatsRepository chatsRepository,
  })  : _userRepository = userRepository,
        _chatsRepository = chatsRepository,
        super(const ChatsState.loading()) {
    on<_FetchChats>(_onFetchChats, transformer: droppable());
    on<ChatsEvent>(
      (event, emit) => event.mapOrNull<Future<void>>(
        createChat: (event) => _onCreateChat(event, emit),
        removeChat: (event) => _onRemoveChat(event, emit),
      ),
      transformer: concurrent(),
    );
  }

  Future<void> _onFetchChats(
    _FetchChats event,
    Emitter<ChatsState> emit,
  ) async {
    try {
      final uid = _userRepository.getCurrentUID();
      final chats = await _chatsRepository.getChatsList(uid: uid, id: event.id);
      if (state is _ChatsSuccessState) {
        if ((state as _ChatsSuccessState).hasReachedMax) return;
        emit(chats.isEmpty
            ? (state as _ChatsSuccessState).copyWith(hasReachedMax: true)
            : (state as _ChatsSuccessState).copyWith(
                hasReachedMax: false,
                chats: (state as _ChatsSuccessState).chats + chats));
      } else {
        final newState = chats.isEmpty
            ? const ChatsState.empty()
            : ChatsState.success(chats: chats, hasReachedMax: false);
        emit(newState);
      }
    } catch (error) {
      emit(ChatsState.failure(error: error));
    }
  }

  Future<void> _onCreateChat(
    _CreateChat event,
    Emitter<ChatsState> emit,
  ) async {
    try {
      final uid = _userRepository.getCurrentUID();
      await _chatsRepository.createChat(uid: uid, name: event.name);
      final chats = await _chatsRepository.getChatsList(uid: uid, id: '');
      final newState = chats.isEmpty
          ? const ChatsState.empty()
          : ChatsState.success(chats: chats, hasReachedMax: false);
      emit(newState);
    } catch (error) {
      emit(ChatsState.failure(error: error));
    }
  }

  Future<void> _onRemoveChat(
    _RemoveChat event,
    Emitter<ChatsState> emit,
  ) async {
    try {
      final uid = _userRepository.getCurrentUID();
      await _chatsRepository.removeChat(uid: uid, id: event.id);
      final chats = await _chatsRepository.getChatsList(uid: uid, id: '');
      final newState = chats.isEmpty
          ? const ChatsState.empty()
          : ChatsState.success(chats: chats, hasReachedMax: false);
      emit(newState);
    } catch (error) {
      emit(ChatsState.failure(error: error));
    }
  }
}