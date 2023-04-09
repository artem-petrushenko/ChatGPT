part of 'chat_bloc.dart';

abstract class ChatState extends Equatable {}

class ChatInitialState extends ChatState {
  @override
  List<Object?> get props => [];
}

class ChatLoadingState extends ChatState {
  @override
  List<Object?> get props => [];
}

class ChatLoadedState extends ChatState {
  final List<ChatModel>? chatHistoryModel;

  ChatLoadedState(this.chatHistoryModel);

  @override
  List<Object?> get props => [chatHistoryModel];
}

class ChatErrorState extends ChatState {
  final Object? error;

  ChatErrorState(this.error);

  @override
  List<Object?> get props => [error];
}
