part of 'conversations_bloc.dart';

@freezed
class ConversationsEvent with _$ConversationsEvent {
  const factory ConversationsEvent.fetchConversations({required String id}) = _FetchConversations;

  const factory ConversationsEvent.createConversation({
    required String name,
  }) = _CreateConversation;

  const factory ConversationsEvent.removeConversation({required String id}) = _RemoveConversation;
}
