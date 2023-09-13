import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'package:chat_gpt/src/bloc/bloc/theme/theme_bloc.dart';
import 'package:chat_gpt/src/data/client/cloud_firestore.dart';
import 'package:chat_gpt/src/data/client/firebase_authentication.dart';
import 'package:chat_gpt/src/data/client/http_client.dart';
import 'package:chat_gpt/src/data/client/shared_preferences_manager.dart';
import 'package:chat_gpt/src/data/client/sqlite_database.dart';
import 'package:chat_gpt/src/data/provider/auth/remote/auth_network_data_provider_impl.dart';
import 'package:chat_gpt/src/data/provider/chat/local/chat_database_access_object_impl.dart';
import 'package:chat_gpt/src/data/provider/chat/remote/chat_network_data_provider_impl.dart';
import 'package:chat_gpt/src/data/provider/conversations/local/conversations_database_access_object_impl.dart';
import 'package:chat_gpt/src/data/provider/conversations/remote/conversations_network_data_provider_impl.dart';
import 'package:chat_gpt/src/data/provider/message/remote/message_network_data_provider_impl.dart';
import 'package:chat_gpt/src/data/provider/settings/local/settings_storage_impl.dart';
import 'package:chat_gpt/src/data/provider/user/remote/user_network_data_provider_impl.dart';
import 'package:chat_gpt/src/data/repository/chat/chat_repository_impl.dart';
import 'package:chat_gpt/src/data/repository/conversations/conversations_repository_impl.dart';
import 'package:chat_gpt/src/data/repository/message/message_repository_impl.dart';
import 'package:chat_gpt/src/data/repository/settings/settings_repository_impl.dart';
import 'package:chat_gpt/src/data/repository/user/user_repository_impl.dart';
import 'package:chat_gpt/src/dependency_injection.dart';
import 'package:chat_gpt/src/utils/extension/dio_proxy.dart';
import 'package:chat_gpt/src/widget/router/router.dart';

import 'package:chat_gpt/firebase_options.dart';
import 'package:chat_gpt/src/data/client/firebase_notification.dart';

import 'package:chat_gpt/src/bloc/chat_observer.dart';

import 'package:chat_gpt/src/app.dart';

Future<AppRouter> initDependencyInjection() async {
  final dio = Dio()..useProxy();
  return AppRouter(
    dependencyInjection: DependencyInjection(
      chatRepository: const ChatRepositoryImpl(
        chatDatabaseAccessObject: ChatDatabaseAccessObjectImpl(
          sqLiteDatabase: SQLiteDatabase(),
        ),
        chatNetworkDataProvider: ChatNetworkDataProviderImpl(
          cloudFirestore: CloudFirestore(),
        ),
      ),
      conversationsRepository: const ConversationsRepositoryImpl(
        conversationsNetworkDataProvider: ConversationsNetworkDataProviderImpl(
          cloudFirestore: CloudFirestore(),
        ),
        conversationsDatabaseAccessObject:
            ConversationsDatabaseAccessObjectImpl(
          sqLiteDatabase: SQLiteDatabase(),
        ),
      ),
      messageRepository: MessageRepositoryImpl(
        messageNetworkDataProvider: MessageNetworkDataProviderImpl(
          httpClient: HttpClient(dio: dio),
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
    ),
  );
}

Future<void> main() async {
  //TODO
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));
  Bloc.observer = const ChatObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseNotification().initNotification();
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
  final router = await initDependencyInjection();
  runApp(
    BlocProvider(
      create: (BuildContext context) => ThemeBloc(
        settingsRepository: SettingsRepositoryImpl(
          settingsStorage: SettingsStorageImpl(
            sharedPreferencesManager: SharedPreferencesManager(),
          ),
        ),
      )..add(const ThemeEvent.fetchCurrentTheme()),
      child: MyApp(router: router),
    ),
  );
}
