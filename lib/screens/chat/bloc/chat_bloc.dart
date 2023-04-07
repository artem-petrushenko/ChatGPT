import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/models/chat_completion_model.dart';

import 'package:chat_gpt/repository/chat_gpt_repository.dart';

part 'chat_state.dart';

part 'chat_event.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatGPTRepository _chatGPTRepository;

  ChatBloc(this._chatGPTRepository) : super(ChatInitialState()) {
    on<LoadingChatEvent>((event, emit) async {
      emit(ChatLoadedState(null));
    });
    on<SendMessageEvent>((event, emit) async {
      emit(ChatLoadingState());
      try {
        final chatCompletionModel =
            await _chatGPTRepository.createChatCompletion(
          model: "gpt-3.5-turbo",
          messages: [
            <String, dynamic>{
              'role': 'user',
              'content': event.message,
            },
          ],
        );
        emit(ChatLoadedState(chatCompletionModel));
      } catch (e) {
        emit(ChatErrorState('Error'));
      }
    });
  }
}
