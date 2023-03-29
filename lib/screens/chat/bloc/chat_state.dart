part of 'chat_bloc.dart';

abstract class ChatState extends Equatable {}

class ChatLoadingState extends ChatState {
  @override
  List<Object?> get props => [];
}

class ChatLoadedState extends ChatState {
  final ChatCompletionModel chatCompletionModel;

  ChatLoadedState(this.chatCompletionModel);

  @override
  List<Object?> get props => [chatCompletionModel];
}

class ChatErrorState extends ChatState {
  final String error;

  ChatErrorState(this.error);

  @override
  List<Object?> get props => [error];
}
