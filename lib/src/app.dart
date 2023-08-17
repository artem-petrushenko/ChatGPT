import 'package:flutter/material.dart';

import 'package:chat_gpt/src/widget/router/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ChatGPT',
      theme: ThemeData(
        useMaterial3: true,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(),
      ),
      routerDelegate: AppRouter.router.routerDelegate,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      backButtonDispatcher: AppRouter.router.backButtonDispatcher,
    );
  }
}
