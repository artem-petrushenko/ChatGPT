part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.loading() = _ChatLoadingState;

  const factory ChatState.success({
    required final String userId,
    required final List<MessageModel> messages,
    required final bool hasReachedMax,
  }) = _ChatSuccessState;

  const factory ChatState.empty() = _ChatEmptyState;

  const factory ChatState.failure({
    required final Object error,
  }) = _ChatFailureState;
}
