part of 'contacts_bloc.dart';

@freezed
class ContactsState with _$ContactsState {
  const factory ContactsState.loading() = _ContactsLoadingState;

  const factory ContactsState.success({
    required final List<UserModel> contacts,
    required final bool hasReachedMax,
  }) = _ContactsSuccessState;

  const factory ContactsState.empty() = _ContactsEmptyState;

  const factory ContactsState.failure({
    required final Object error,
  }) = _ContactsFailureState;
}
