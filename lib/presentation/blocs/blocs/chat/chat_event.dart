part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.loadingChat() = LoadingChatEvent;

  const factory ChatEvent.sendMessage({
    required String message,
  }) = SendMessageEvent;

  const factory ChatEvent.copyMessage({
    required String message,
  }) = CopyMessageEvent;

  const factory ChatEvent.regenerateResponse({
    required String message,
  }) = RegenerateResponseEvent;
}
