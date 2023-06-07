part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.loading() = _ChatLoadingState;

  const factory ChatState.success({
    required List<ChatHistoryModel> history,
  }) = _ChatSuccessState;

  const factory ChatState.empty() = _ChatEmptyState;

  const factory ChatState.failure({
    required Object? error,
  }) = _ChatFailureState;
}
