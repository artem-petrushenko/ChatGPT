part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInWithGoogle() = _SignInWithGoogle;

  const factory AuthEvent.signOut() = _SignOut;

  const factory AuthEvent.signInWithEmailAndPassword({
    required final String email,
    required final String password,
  }) = _SignInWithEmailAndPassword;

  const factory AuthEvent.signUpWithEmailAndPassword({
    required final String email,
    required final String password,
  }) = _SignUpWithEmailAndPassword;

  const factory AuthEvent.sendPasswordResetEmail({
    required final String email,
  }) = _SendPasswordResetEmail;
}
