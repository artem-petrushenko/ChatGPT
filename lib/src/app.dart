import 'package:flutter/material.dart';

import 'package:chat_gpt/src/widget/router/router.dart';
import 'package:chat_gpt/src/widget/themes/themes.dart';

class MyApp extends StatelessWidget {
  final AppRouter _router;

  const MyApp({
    super.key,
    required AppRouter router,
  }) : _router = router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wave',
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: ThemeMode.light,
      routerDelegate: _router.router.routerDelegate,
      routeInformationParser: _router.router.routeInformationParser,
      routeInformationProvider: _router.router.routeInformationProvider,
      backButtonDispatcher: _router.router.backButtonDispatcher,
    );
  }
}
