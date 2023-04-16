part of 'chat_bloc.dart';

abstract class ChatState extends Equatable {
  const ChatState();
}

class ChatInitialState extends ChatState {
  @override
  List<Object?> get props => [];
}

class ChatLoadingState extends ChatState {
  @override
  List<Object?> get props => [];
}

class ChatLoadedState extends ChatState {
  final List<ChatHistoryModel>? chatHistoryModel;

  const ChatLoadedState(this.chatHistoryModel);

  @override
  List<Object?> get props => [chatHistoryModel];
}

class ChatErrorState extends ChatState {
  final Object? error;

  const ChatErrorState(this.error);

  @override
  List<Object?> get props => [error];
}
