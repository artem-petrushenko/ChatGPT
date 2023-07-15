part of 'chats_bloc.dart';

@freezed
class ChatsEvent with _$ChatsEvent {
  const factory ChatsEvent.fetchChats({required String id}) = _FetchChats;

  const factory ChatsEvent.createChat({
    required String name,
  }) = _CreateChat;

  const factory ChatsEvent.removeChat({required String id}) = _RemoveChat;
}
