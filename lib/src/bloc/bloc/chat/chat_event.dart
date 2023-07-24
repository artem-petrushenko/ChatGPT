part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.fetchMessages({
    required final String messageId,
  }) = _FetchMessagesEvent;

  const factory ChatEvent.sendMessage({
    required final String message,
  }) = _SendMessageEvent;

  const factory ChatEvent.copyMessage({
    required final String message,
  }) = _CopyMessageEvent;

  const factory ChatEvent.regenerateResponse({
    required final String message,
  }) = _RegenerateResponseEvent;
}
