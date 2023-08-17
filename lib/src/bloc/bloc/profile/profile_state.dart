part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _ProfileLoadingState;

  const factory ProfileState.success({
    required final UserModel user,
  }) = _ProfileSuccessState;

  const factory ProfileState.failure({
    required final Object error,
  }) = _ProfileFailureState;
}
