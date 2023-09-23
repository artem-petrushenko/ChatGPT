import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chat_gpt/src/model/user/user_model.dart';

import 'package:chat_gpt/src/data/repository/user/user_repository.dart';

import 'package:chat_gpt/src/data/client/firebase_cloud_storage.dart';

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
        signOut: (event) => _onSignOut(event, emit),
        updateAvatar: (event) => _onUpdateAvatar(event, emit),
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

  Future<void> _onSignOut(
    _SignOut event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      await _userRepository.logOut();
    } catch (error) {
      emit(ProfileState.failure(error: error));
    }
  }

  Future<void> _onUpdateAvatar(
    _UpdateAvatar event,
    Emitter<ProfileState> emit,
  ) async {
    final storageService = FirebaseCloudStorage();
    try {
      final image = event.file;
      if (image != null) {
        final String fileName =
            DateTime.now().millisecondsSinceEpoch.toString();
        final uid = _userRepository.getCurrentUID();
        final storagePath = '$uid/avatar/$fileName.jpg';

        final url = await storageService.uploadFile(image, storagePath);
        await _userRepository.updateAvatar(uid: uid, imageUrl: url);
        final user = await _userRepository.getUser(uid: uid);

        emit(ProfileState.success(user: user.copyWith(photoUrl: url)));
      }
    } catch (error) {
      emit(ProfileState.failure(error: error));
    }
  }
}
