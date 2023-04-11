part of 'chat_bloc.dart';

abstract class ChatEvent extends Equatable {
  const ChatEvent();
}

class LoadingChatEvent extends ChatEvent {
  const LoadingChatEvent();

  @override
  List<Object> get props => [];
}

class SendMessageEvent extends ChatEvent {
  const SendMessageEvent();

  @override
  List<Object> get props => [];
}

class CopyMessageEvent extends ChatEvent {
  final String message;

  const CopyMessageEvent(this.message);

  @override
  List<Object> get props => [message];
}

class RegenerateResponseEvent extends ChatEvent {
  final String message;

  const RegenerateResponseEvent(this.message);

  @override
  List<Object> get props => [message];
}
