part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.loading() = _ChatLoadingState;

  const factory ChatState.success({
    required final List<ChatHistoryModel> history,
    required final bool hasResponse,
  }) = _ChatSuccessState;

  const factory ChatState.empty() = _ChatEmptyState;

  const factory ChatState.failure({
    required final Object? error,
  }) = _ChatFailureState;
}
