part of 'conversations_bloc.dart';

@freezed
class ConversationsEvent with _$ConversationsEvent {
  const factory ConversationsEvent.fetchConversations({
    required final String id,
  }) = _FetchConversations;

  const factory ConversationsEvent.createConversation({
    required final String name,
  }) = _CreateConversation;

  const factory ConversationsEvent.removeConversation({
    required final String id,
  }) = _RemoveConversation;
}
