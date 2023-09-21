part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.fetchUser() = _FetchUser;
  const factory ProfileEvent.signOut() = _SignOut;
  const factory ProfileEvent.updateAvatar({File? file}) = _UpdateAvatar;
}
