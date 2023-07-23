import 'package:flutter/widgets.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:chat_gpt/src/widget/views/chats/chats_view.dart';
import 'package:chat_gpt/src/widget/views/chat/chat_view.dart';
import 'package:chat_gpt/src/widget/views/sign_in/sign_in_view.dart';

import 'package:chat_gpt/src/bloc/bloc/chats/chats_bloc.dart';
import 'package:chat_gpt/src/bloc/bloc/auth/auth_bloc.dart';
import 'package:chat_gpt/src/bloc/bloc/chat/chat_bloc.dart';

import 'package:chat_gpt/src/data/repository/user/user_repository_impl.dart';
import 'package:chat_gpt/src/data/repository/chat/chat_repository_impl.dart';
import 'package:chat_gpt/src/data/repository/chats/chats_repository_impl.dart';

import 'package:chat_gpt/src/data/provider/chat/remote/chat_network_data_provider_impl.dart';
import 'package:chat_gpt/src/data/provider/message/remote/message_network_data_provider_impl.dart';
import 'package:chat_gpt/src/data/provider/chat/local/chat_database_access_object_impl.dart';
import 'package:chat_gpt/src/data/provider/user/remote/user_network_data_provider_impl.dart';
import 'package:chat_gpt/src/data/provider/chats/remote/chats_network_data_provider_impl.dart';

import 'package:chat_gpt/src/data/client/firebase_authentication.dart';
import 'package:chat_gpt/src/data/client/http_client.dart';
import 'package:chat_gpt/src/data/client/sqlite_database.dart';
import 'package:chat_gpt/src/data/client/cloud_firestore.dart';

class AppRouter {
  static final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/chats',
    redirect: (BuildContext context, GoRouterState state) {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        return '/';
      }
      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (BuildContext context) => AuthBloc(
              userRepository: const UserRepositoryImpl(
                userNetworkDataProvider: UserNetworkDataProviderImpl(
                  firebaseAuthentication: FirebaseAuthentication(),
                ),
              ),
            ),
            child: const SignInView(),
          );
        },
      ),
      GoRoute(
        path: '/chats',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (BuildContext context) => ChatsBloc(
              userRepository: const UserRepositoryImpl(
                userNetworkDataProvider: UserNetworkDataProviderImpl(
                  firebaseAuthentication: FirebaseAuthentication(),
                ),
              ),
              chatsRepository: const ChatsRepositoryImpl(
                chatsNetworkDataProvider: ChatsNetworkDataProviderImpl(
                  cloudFirestore: CloudFirestore(),
                ),
              ),
            )..add(const ChatsEvent.fetchChats(id: '')),
            child: const ChatsView(),
          );
        },
      ),
      GoRoute(
        name: 'chat',
        path: '/chat',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => ChatBloc(
              chatRepository: const ChatRepositoryImpl(
                chatNetworkDataProvider: ChatNetworkDataProviderImpl(
                  cloudFirestore: CloudFirestore(),
                ),
                chatDatabaseAccessObject: ChatDatabaseAccessObjectImpl(
                  sqLiteDatabase: SQLiteDatabase(),
                ),
              ),
              id: state.queryParameters['id'] ?? '',
            )..add(const ChatEvent.loadingChat(messageId: '')),
            child: const ChatView(),
          );
        },
      ),
    ],
  );
}
