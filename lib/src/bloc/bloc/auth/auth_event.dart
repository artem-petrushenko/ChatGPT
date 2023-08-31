part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInWithGoogle() = _SignInWithGoogle;

  const factory AuthEvent.signOut() = _SignOut;

  const factory AuthEvent.signInWithEmailAndPassword({
    required String email,
    required String password,
  }) = _SignInWithEmailAndPassword;
}
