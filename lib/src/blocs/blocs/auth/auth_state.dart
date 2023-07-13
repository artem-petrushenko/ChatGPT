part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = _Loading;

  const factory AuthState.authenticated() = _Authenticated;

  const factory AuthState.unAuthenticated() = _UnAuthenticated;

  const factory AuthState.failure({
    required final Object? error,
  }) = _Failure;
}
