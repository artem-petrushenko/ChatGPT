part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.googleSignIn() = _GoogleSignIn;

  const factory AuthEvent.signOut() = _SignOut;
}
