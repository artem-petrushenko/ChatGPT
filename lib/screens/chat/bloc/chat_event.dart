part of 'chat_bloc.dart';

abstract class ChatEvent extends Equatable {
  const ChatEvent();
}

class GetChatEvent extends ChatEvent {
  @override
  List<Object> get props => [];
}
