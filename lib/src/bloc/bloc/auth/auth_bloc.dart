import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:chat_gpt/src/data/repository/user/user_repository.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserRepository _userRepository;

  AuthBloc({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const AuthState.loading()) {
    on<AuthEvent>(
      (event, emit) => event.map<Future<void>>(
        signInWithGoogle: (event) => _onSignInWithGoogle(event, emit),
        signOut: (event) => _onSignOut(event, emit),
        signInWithEmailAndPassword: (event) =>
            _onSignInWithEmailAndPassword(event, emit),
        signUpWithEmailAndPassword: (event) =>
            _onSignUpWithEmailAndPassword(event, emit),
        sendPasswordResetEmail: (event) =>
            _onSendPasswordResetEmail(event, emit),
      ),
      transformer: sequential(),
    );
  }

  Future<void> _onSignInWithGoogle(
    _SignInWithGoogle event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await _userRepository.signInWithGoogle();
      final uid = _userRepository.getCurrentUID();
      final isUserInDatabase = await _userRepository.isUserInDatabase(uid: uid);
      if (isUserInDatabase == false) {
        final user = _userRepository.getCurrentUser();
        await _userRepository.createUser(user: user);
      }
      emit(const AuthState.authenticated());
    } catch (error) {
      emit(AuthState.failure(error: error));
      emit(const AuthState.unAuthenticated());
    }
  }

  Future<void> _onSignInWithEmailAndPassword(
    _SignInWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await _userRepository.signInWithEmailAndPassword(
          email: event.email, password: event.password);
      final uid = _userRepository.getCurrentUID();
      final isUserInDatabase = await _userRepository.isUserInDatabase(uid: uid);
      if (isUserInDatabase == false) {
        final user = _userRepository.getCurrentUser();
        await _userRepository.createUser(user: user);
      }
      emit(const AuthState.authenticated());
    } catch (error) {
      emit(AuthState.failure(error: error));
      emit(const AuthState.unAuthenticated());
    }
  }

  Future<void> _onSignOut(
    _SignOut event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await _userRepository.logOut();
      emit(const AuthState.unAuthenticated());
    } catch (error) {
      emit(AuthState.failure(error: error));
      emit(const AuthState.unAuthenticated());
    }
  }

  Future<void> _onSendPasswordResetEmail(
    _SendPasswordResetEmail event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await _userRepository.sendPasswordResetEmail(email: event.email);
    } catch (error) {
      // final lastState = state;
      // emit(AuthState.failure(error: error));
      // emit(lastState);
    }
  }

  Future<void> _onSignUpWithEmailAndPassword(
    _SignUpWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await _userRepository.createWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      final uid = _userRepository.getCurrentUID();
      final isUserInDatabase = await _userRepository.isUserInDatabase(uid: uid);
      if (isUserInDatabase == false) {
        final user = _userRepository.getCurrentUser();
        await _userRepository.createUser(user: user);
      }
      emit(const AuthState.authenticated());
    } catch (error) {
      emit(AuthState.failure(error: error));
      emit(const AuthState.unAuthenticated());
    }
  }
}
