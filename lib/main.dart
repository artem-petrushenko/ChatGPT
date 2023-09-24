import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'package:chat_gpt/src/app.dart';

import 'package:chat_gpt/firebase_options.dart';

import 'package:chat_gpt/src/dependency_injection.dart';

import 'package:chat_gpt/src/widget/router/router.dart';

import 'package:chat_gpt/src/bloc/chat_observer.dart';
import 'package:chat_gpt/src/bloc/bloc/locale/locale_bloc.dart';
import 'package:chat_gpt/src/bloc/bloc/theme/theme_bloc.dart';

import 'package:chat_gpt/src/data/provider/auth/remote/auth_network_data_provider_impl.dart';

import 'package:chat_gpt/src/data/provider/chat/local/chat_database_access_object_impl.dart';
import 'package:chat_gpt/src/data/provider/chat/remote/chat_network_data_provider_impl.dart';

import 'package:chat_gpt/src/data/provider/conversations/local/conversations_database_access_object_impl.dart';
import 'package:chat_gpt/src/data/provider/conversations/remote/conversations_network_data_provider_impl.dart';

import 'package:chat_gpt/src/data/provider/settings/local/settings_storage_impl.dart';
import 'package:chat_gpt/src/data/provider/user/remote/user_network_data_provider_impl.dart';

import 'package:chat_gpt/src/data/repository/chat/chat_repository_impl.dart';
import 'package:chat_gpt/src/data/repository/conversations/conversations_repository_impl.dart';
import 'package:chat_gpt/src/data/repository/settings/settings_repository_impl.dart';

import 'package:chat_gpt/src/data/repository/user/user_repository_impl.dart';

import 'package:chat_gpt/src/data/client/cloud_firestore.dart';
import 'package:chat_gpt/src/data/client/firebase_authentication.dart';
import 'package:chat_gpt/src/data/client/shared_preferences_manager.dart';
import 'package:chat_gpt/src/data/client/sqlite_database.dart';
import 'package:chat_gpt/src/data/client/firebase_notification.dart';

Future<AppRouter> initDependencyInjection() async {
  return AppRouter(
    dependencyInjection: const DependencyInjection(
      chatRepository: ChatRepositoryImpl(
        chatDatabaseAccessObject: ChatDatabaseAccessObjectImpl(
          sqLiteDatabase: SQLiteDatabase(),
        ),
        chatNetworkDataProvider: ChatNetworkDataProviderImpl(
          cloudFirestore: CloudFirestore(),
        ),
      ),
      conversationsRepository: ConversationsRepositoryImpl(
        conversationsNetworkDataProvider: ConversationsNetworkDataProviderImpl(
          cloudFirestore: CloudFirestore(),
        ),
        conversationsDatabaseAccessObject:
            ConversationsDatabaseAccessObjectImpl(
          sqLiteDatabase: SQLiteDatabase(),
        ),
      ),
      userRepository: UserRepositoryImpl(
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
  runZonedGuarded(() async {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ));
    Bloc.observer = const ChatObserver();
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    await FirebaseNotification().initNotification();
    FlutterError.onError = (errorDetails) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    };
    final router = await initDependencyInjection();
    runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => ThemeBloc(
              settingsRepository: SettingsRepositoryImpl(
                settingsStorage: SettingsStorageImpl(
                  sharedPreferencesManager: SharedPreferencesManager(),
                ),
              ),
            )..add(const ThemeEvent.fetchCurrentTheme()),
          ),
          BlocProvider(
            create: (BuildContext context) => LocaleBloc(
              settingsRepository: SettingsRepositoryImpl(
                settingsStorage: SettingsStorageImpl(
                  sharedPreferencesManager: SharedPreferencesManager(),
                ),
              ),
            )..add(const LocaleEvent.fetchCurrentLocale()),
          ),
        ],
        child: MyApp(router: router),
      ),
    );
  }, (error, stack) => FirebaseCrashlytics.instance.recordError(error, stack));
}
