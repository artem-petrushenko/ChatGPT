part of 'conversations_bloc.dart';

@freezed
class ConversationsState with _$ConversationsState {
  const factory ConversationsState.loading() = _ConversationsLoadingState;

  const factory ConversationsState.success({
    required final List<ConversationModel> conversations,
    required final bool hasReachedMax,
  }) = _ConversationsSuccessState;

  const factory ConversationsState.empty() = _ConversationsEmptyState;

  const factory ConversationsState.failure({
    required final Object error,
  }) = _ConversationsFailureState;
}
