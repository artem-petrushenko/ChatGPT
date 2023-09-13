import 'package:chat_gpt/src/widget/views/settings/settings_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:chat_gpt/src/bloc/bloc/contacts/contacts_bloc.dart';
import 'package:chat_gpt/src/dependency_injection.dart';
import 'package:chat_gpt/src/widget/views/contacts/contacts_view.dart';
import 'package:chat_gpt/src/widget/views/registration/registration_view.dart';

import 'package:chat_gpt/src/bloc/bloc/conversations/conversations_bloc.dart';
import 'package:chat_gpt/src/bloc/bloc/profile/profile_bloc.dart';
import 'package:chat_gpt/src/bloc/bloc/auth/auth_bloc.dart';
import 'package:chat_gpt/src/bloc/bloc/chat/chat_bloc.dart';

import 'package:chat_gpt/src/data/provider/conversations/local/conversations_database_access_object_impl.dart';
import 'package:chat_gpt/src/data/provider/user/remote/user_network_data_provider_impl.dart';

import 'package:chat_gpt/src/widget/views/main/main_view_model.dart';

import 'package:chat_gpt/src/widget/views/onboard/onboard_view.dart';
import 'package:chat_gpt/src/widget/views/profile/profile_view.dart';
import 'package:chat_gpt/src/widget/views/main/main_view.dart';
import 'package:chat_gpt/src/widget/views/conversations/conversations_view.dart';
import 'package:chat_gpt/src/widget/views/chat/chat_view.dart';
import 'package:chat_gpt/src/widget/views/sign_in/sign_in_view.dart';

import 'package:chat_gpt/src/data/repository/message/message_repository_impl.dart';
import 'package:chat_gpt/src/data/repository/user/user_repository_impl.dart';
import 'package:chat_gpt/src/data/repository/conversations/conversations_repository_impl.dart';

import 'package:chat_gpt/src/data/provider/message/remote/message_network_data_provider_impl.dart';
import 'package:chat_gpt/src/data/provider/auth/remote/auth_network_data_provider_impl.dart';
import 'package:chat_gpt/src/data/provider/conversations/remote/conversations_network_data_provider_impl.dart';

import 'package:chat_gpt/src/data/client/firebase_authentication.dart';
import 'package:chat_gpt/src/data/client/http_client.dart';
import 'package:chat_gpt/src/data/client/sqlite_database.dart';
import 'package:chat_gpt/src/data/client/cloud_firestore.dart';

import 'package:chat_gpt/src/data/provider/chat/local/chat_database_access_object_impl.dart';
import 'package:chat_gpt/src/data/provider/chat/remote/chat_network_data_provider_impl.dart';
import 'package:chat_gpt/src/data/repository/chat/chat_repository_impl.dart';

class AppRouter {
  final DependencyInjection _dependencyInjection;

  AppRouter({
    required DependencyInjection dependencyInjection,
  }) : _dependencyInjection = dependencyInjection;

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();
  final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: '/conversations',
    redirect: (BuildContext context, GoRouterState state) {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        if (state.location == '/signIn') {
          return '/signIn';
        } else if (state.location == '/registration') {
          return '/registration';
        }
        return '/onboard';
      }
      return null;
    },
    routes: [
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/onboard',
        builder: (BuildContext context, GoRouterState state) =>
            const OnboardView(),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => ChangeNotifierProvider(
          create: (BuildContext context) => MainViewModel(),
          child: MainView(child),
        ),
        routes: <RouteBase>[
          GoRoute(
            name: 'settings',
            path: '/settings',
            builder: (BuildContext context, GoRouterState state) =>
                const SettingsView(),
          ),
          GoRoute(
            name: 'profile',
            path: '/profile',
            builder: (BuildContext context, GoRouterState state) =>
                BlocProvider(
              create: (context) => ProfileBloc(
                userRepository: const UserRepositoryImpl(
                  authNetworkDataProvider: AuthNetworkDataProviderImpl(
                    firebaseAuthentication: FirebaseAuthentication(),
                  ),
                  userNetworkDataProvider: UserNetworkDataProviderImpl(
                    cloudFirestore: CloudFirestore(),
                  ),
                ),
              )..add(const ProfileEvent.fetchUser()),
              child: const ProfileView(),
            ),
          ),
          GoRoute(
            name: 'contacts',
            path: '/contacts',
            builder: (BuildContext context, GoRouterState state) =>
                BlocProvider(
                    create: (BuildContext context) => ContactsBloc(
                          userRepository: const UserRepositoryImpl(
                            authNetworkDataProvider:
                                AuthNetworkDataProviderImpl(
                              firebaseAuthentication: FirebaseAuthentication(),
                            ),
                            userNetworkDataProvider:
                                UserNetworkDataProviderImpl(
                              cloudFirestore: CloudFirestore(),
                            ),
                          ),
                        )..add(const ContactsEvent.fetchContacts(id: '')),
                    child: const ContactsView()),
          ),
          GoRoute(
            name: 'conversations',
            path: '/conversations',
            builder: (BuildContext context, GoRouterState state) {
              return BlocProvider(
                create: (BuildContext context) => ConversationsBloc(
                  userRepository: const UserRepositoryImpl(
                    authNetworkDataProvider: AuthNetworkDataProviderImpl(
                      firebaseAuthentication: FirebaseAuthentication(),
                    ),
                    userNetworkDataProvider: UserNetworkDataProviderImpl(
                      cloudFirestore: CloudFirestore(),
                    ),
                  ),
                  conversationsRepository: const ConversationsRepositoryImpl(
                    conversationsNetworkDataProvider:
                        ConversationsNetworkDataProviderImpl(
                      cloudFirestore: CloudFirestore(),
                    ),
                    conversationsDatabaseAccessObject:
                        ConversationsDatabaseAccessObjectImpl(
                      sqLiteDatabase: SQLiteDatabase(),
                    ),
                  ),
                )..add(const ConversationsEvent.fetchConversations(id: '')),
                child: const ChatsView(),
              );
            },
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        name: 'signIn',
        path: '/signIn',
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
          create: (BuildContext context) => AuthBloc(
            userRepository: const UserRepositoryImpl(
              authNetworkDataProvider: AuthNetworkDataProviderImpl(
                firebaseAuthentication: FirebaseAuthentication(),
              ),
              userNetworkDataProvider: UserNetworkDataProviderImpl(
                cloudFirestore: CloudFirestore(),
              ),
            ),
          ),
          child: const SignInView(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        name: 'registration',
        path: '/registration',
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
          create: (BuildContext context) => AuthBloc(
            userRepository: const UserRepositoryImpl(
              authNetworkDataProvider: AuthNetworkDataProviderImpl(
                firebaseAuthentication: FirebaseAuthentication(),
              ),
              userNetworkDataProvider: UserNetworkDataProviderImpl(
                cloudFirestore: CloudFirestore(),
              ),
            ),
          ),
          child: const RegistrationView(),
        ),
      ),
      GoRoute(
        name: 'chat',
        path: '/chat',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
          create: (context) => ChatBloc(
            id: state.queryParameters['id'] ?? '',
            chatRepository: const ChatRepositoryImpl(
              chatNetworkDataProvider: ChatNetworkDataProviderImpl(
                cloudFirestore: CloudFirestore(),
              ),
              chatDatabaseAccessObject: ChatDatabaseAccessObjectImpl(
                sqLiteDatabase: SQLiteDatabase(),
              ),
            ),
            userRepository: const UserRepositoryImpl(
              authNetworkDataProvider: AuthNetworkDataProviderImpl(
                firebaseAuthentication: FirebaseAuthentication(),
              ),
              userNetworkDataProvider: UserNetworkDataProviderImpl(
                cloudFirestore: CloudFirestore(),
              ),
            ),
            messageRepository: MessageRepositoryImpl(
              messageNetworkDataProvider: MessageNetworkDataProviderImpl(
                httpClient: HttpClient(dio: Dio()),
              ),
            ),
          )..add(const ChatEvent.fetchMessages(messageId: '')),
          child: const ChatView(),
        ),
      ),
    ],
  );
}
