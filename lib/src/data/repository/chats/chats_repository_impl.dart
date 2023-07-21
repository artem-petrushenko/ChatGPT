import 'package:flutter/widgets.dart';

import 'package:chat_gpt/src/data/repository/chats/chats_repository.dart';

import 'package:chat_gpt/src/data/provider/chats_network_data_provider.dart';

import 'package:chat_gpt/src/model/conversation/conversation_model.dart';

@immutable
class ChatsRepositoryImpl implements ChatsRepository {
  const ChatsRepositoryImpl({
    required ChatsNetworkDataProvider chatsNetworkDataProvider,
  }) : _chatsNetworkDataProvider = chatsNetworkDataProvider;
  final ChatsNetworkDataProvider _chatsNetworkDataProvider;

  @override
  Future<List<ConversationModel>> getChatsList({
    required String uid,
    required String id,
  }) async =>
      await _chatsNetworkDataProvider.getChats(uid: uid, id: id);

  @override
  Future<void> createChat({
    required String uid,
    required String name,
  }) =>
      _chatsNetworkDataProvider.createChat(name: name, uid: uid);

  @override
  Future<void> removeChat({
    required String uid,
    required String id,
  }) =>
      _chatsNetworkDataProvider.removeChat(uid: uid, id: id);
}
