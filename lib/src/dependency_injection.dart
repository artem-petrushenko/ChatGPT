import 'package:chat_gpt/src/data/repository/chat/chat_repository.dart';
import 'package:chat_gpt/src/data/repository/user/user_repository.dart';
import 'package:chat_gpt/src/data/repository/conversations/conversations_repository.dart';

class DependencyInjection {
  final ChatRepository chatRepository;
  final ConversationsRepository conversationsRepository;
  final UserRepository userRepository;

  const DependencyInjection({
    required this.chatRepository,
    required this.conversationsRepository,
    required this.userRepository,
  });
}
