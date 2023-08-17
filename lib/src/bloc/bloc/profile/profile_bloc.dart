import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chat_gpt/src/model/user/user_model.dart';

import 'package:chat_gpt/src/data/repository/user/user_repository.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserRepository _userRepository;

  ProfileBloc({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const ProfileState.loading()) {
    on<ProfileEvent>(
      (event, emit) => event.map<Future<void>>(
        fetchUser: (event) => _onFetchUser(event, emit),
      ),
      transformer: concurrent(),
    );
  }

  Future<void> _onFetchUser(
    _FetchUser event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      final uid = _userRepository.getCurrentUID();
      final user = await _userRepository.getUser(uid: uid);
      emit(ProfileState.success(user: user));
    } catch (error) {
      emit(ProfileState.failure(error: error));
    }
  }
}
