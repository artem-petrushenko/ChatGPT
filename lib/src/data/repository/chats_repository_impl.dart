import 'package:chat_gpt/src/models/chat_model.dart';
import 'package:flutter/widgets.dart';

import 'package:chat_gpt/src/data/repository/chats_repository.dart';

import 'package:chat_gpt/src/data/provider/chats_network_data_provider.dart';

@immutable
class ChatsRepositoryImpl implements ChatsRepository {
  const ChatsRepositoryImpl({
    required ChatsNetworkDataProvider chatsNetworkDataProvider,
  }) : _chatsNetworkDataProvider = chatsNetworkDataProvider;
  final ChatsNetworkDataProvider _chatsNetworkDataProvider;

  @override
  Future<List<ChatModel>> getChatsList({
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
