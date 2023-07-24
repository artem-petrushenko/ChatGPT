import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chat_gpt/src/data/repository/user/user_repository.dart';

import 'package:chat_gpt/src/model/user/user_model.dart';

part 'main_event.dart';

part 'main_state.dart';

part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final UserRepository _userRepository;

  MainBloc({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const MainState.loading()) {
    on<MainEvent>((event, emit) async {
      if (event is _FetchUser) {
        await _onFetchUser(event, emit);
      }
    });
  }

  Future<void> _onFetchUser(
    _FetchUser event,
    Emitter<MainState> emit,
  ) async {
    try {
      final uid = _userRepository.getCurrentUID();
      final user = await _userRepository.getUser(uid: uid);
      emit(MainState.success(user: user));
    } catch (error) {
      emit(MainState.failure(error: error));
    }
  }
}
