import 'package:chat_gpt/models/chat_completion_model.dart';
import 'package:chat_gpt/repository/chat_gpt_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'chat_state.dart';

part 'chat_event.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatGPTRepository _chatGPTRepository;

  ChatBloc(this._chatGPTRepository) : super(ChatLoadingState()) {
    on<GetChatEvent>((event, emit) async {
      emit(ChatLoadingState());
      try {
        final chatCompletionModel =
            await _chatGPTRepository.createChatCompletion();
        emit(ChatLoadedState(chatCompletionModel));
      } catch (e) {
        emit(ChatErrorState('Error'));
      }
    });
  }
}
