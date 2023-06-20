part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.loadingChat() = LoadingChatEvent;

  const factory ChatEvent.sendMessage({
    required final String message,
  }) = SendMessageEvent;

  const factory ChatEvent.copyMessage({
    required final String message,
  }) = CopyMessageEvent;

  const factory ChatEvent.regenerateResponse({
    required final String message,
  }) = RegenerateResponseEvent;
}
