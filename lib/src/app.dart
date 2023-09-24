import 'package:chat_gpt/src/widget/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:chat_gpt/src/widget/router/router.dart';

import 'package:chat_gpt/src/widget/themes/dark_theme.dart';
import 'package:chat_gpt/src/widget/themes/light_theme.dart';

import 'package:chat_gpt/src/bloc/bloc/theme/theme_bloc.dart';
import 'package:chat_gpt/src/bloc/bloc/locale/locale_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  final AppRouter _router;

  const MyApp({
    super.key,
    required AppRouter router,
  }) : _router = router;

  @override
  Widget build(BuildContext context) {
    final themeIndex =
        context.select((ThemeBloc bloc) => bloc.state.themeIndex);
    final locale = context.select((LocaleBloc bloc) => bloc.state.locale);
    return MaterialApp.router(
      title: 'Wave',
      theme: LightTheme.themeData,
      darkTheme: DarkTheme.themeData,
      themeMode: themeMode(themeIndex),
      locale: Locale(locale, ''),
      localizationsDelegates: const [
        Localization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Localization.delegate.supportedLocales,
      routerDelegate: _router.router.routerDelegate,
      routeInformationParser: _router.router.routeInformationParser,
      routeInformationProvider: _router.router.routeInformationProvider,
      backButtonDispatcher: _router.router.backButtonDispatcher,
    );
  }

  ThemeMode themeMode(int themeIndex) {
    switch (themeIndex) {
      case 0:
        return ThemeMode.system;
      case 1:
        return ThemeMode.light;
      case 2:
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }
}
