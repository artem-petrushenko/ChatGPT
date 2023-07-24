part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.loading() = _MainLoadingState;

  const factory MainState.success({
    required final UserModel user,
  }) = _MainSuccessState;

  const factory MainState.failure({
    required final Object error,
  }) = _MainFailureState;
}
