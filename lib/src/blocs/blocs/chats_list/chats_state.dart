part of 'chats_bloc.dart';

@freezed
class ChatsState with _$ChatsState {
  const factory ChatsState.loading() = _ChatsLoadingState;

  const factory ChatsState.success({
    required final List<ChatModel> chats,
    required final bool hasReachedMax,
  }) = _ChatsSuccessState;

  const factory ChatsState.empty() = _ChatsEmptyState;

  const factory ChatsState.failure({
    required final Object error,
  }) = _ChatsFailureState;
}
