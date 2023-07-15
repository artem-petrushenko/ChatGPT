import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chat_gpt/src/models/chat_model.dart';
import 'package:chat_gpt/src/data/repository/chats_repository.dart';
import 'package:chat_gpt/src/data/repository/user_repository.dart';

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
    on<ChatsEvent>(
      (event, emit) => event.map<Future<void>>(
        fetchChats: (event) => _onFetchChats(event, emit),
        createChat: (event) => _onCreateChat(event, emit),
        removeChat: (event) => _onRemoveChat(event, emit),
      ),
    );
  }

  Future<void> _onFetchChats(
    _FetchChats event,
    Emitter<ChatsState> emit,
  ) async {
    try {
      if (state is _ChatsSuccessState) {
        final uid = _userRepository.getCurrentUID();
        final chats = await _chatsRepository.getChatsList(uid: uid, id: event.id);
        emit(chats.isEmpty
            ? (state as _ChatsSuccessState).copyWith(hasReachedMax: true)
            : (state as _ChatsSuccessState).copyWith(
                hasReachedMax: false,
                chats: (state as _ChatsSuccessState).chats + chats));
      } else {
        final uid = _userRepository.getCurrentUID();
        final chats = await _chatsRepository.getChatsList(uid: uid, id: event.id);
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
          : ChatsState.success(chats: chats, hasReachedMax: true);
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
          : ChatsState.success(chats: chats, hasReachedMax: true);
      emit(newState);
    } catch (error) {
      emit(ChatsState.failure(error: error));
    }
  }
}
