import 'package:chat_gpt/src/data/provider/conversations/local/conversations_database_access_object.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/widgets.dart';

import 'package:chat_gpt/src/model/conversation/conversation_model.dart';

import 'package:chat_gpt/src/data/provider/conversations/remote/conversations_network_data_provider.dart';

import 'package:chat_gpt/src/data/repository/conversations/conversations_repository.dart';

@immutable
class ConversationsRepositoryImpl implements ConversationsRepository {
  const ConversationsRepositoryImpl({
    required ConversationsNetworkDataProvider conversationsNetworkDataProvider,
    required ConversationsDatabaseAccessObject
        conversationsDatabaseAccessObject,
  })  : _conversationsNetworkDataProvider = conversationsNetworkDataProvider,
        _conversationsDatabaseAccessObject = conversationsDatabaseAccessObject;
  final ConversationsNetworkDataProvider _conversationsNetworkDataProvider;
  final ConversationsDatabaseAccessObject _conversationsDatabaseAccessObject;

//TODO: REMOVE
  Future<bool> isInternetAvailable() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult != ConnectivityResult.none;
  }

  @override
  Future<List<ConversationModel>> fetchConversations({
    required String uid,
    required String id,
  }) async {
    bool isOnline = await isInternetAvailable();
    if (isOnline) {
      return await _conversationsNetworkDataProvider.fetchConversations(
          uid: uid, id: id);
    } else {
      return await _conversationsDatabaseAccessObject.fetchConversations(
          uid: uid, id: id);
    }
  }

  @override
  Future<void> createConversation({
    required String uid,
    required String name,
  }) async {
    final id = await _conversationsNetworkDataProvider.createConversation(
        name: name, uid: uid);
    await _conversationsDatabaseAccessObject.createConversation(
        name: name, uid: uid, id: id);
  }

  @override
  Future<void> removeConversation({
    required String uid,
    required String id,
  }) async {
    _conversationsNetworkDataProvider.removeConversation(id: id);
    _conversationsDatabaseAccessObject.removeConversation(id: id);
  }
}
