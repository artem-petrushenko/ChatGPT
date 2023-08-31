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
        colorSchemeSeed: const Color(0xFFE9A322),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Color(0xFFE9A322),
        ),
        fontFamily: 'Poppins',
        appBarTheme:  const AppBarTheme(
          surfaceTintColor: Color(0xFFFFFFFF),
          color: Color(0xFFFFFFFF),
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Color(0xFFFFFFFF),
        ),
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      ),
      routerDelegate: AppRouter.router.routerDelegate,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      backButtonDispatcher: AppRouter.router.backButtonDispatcher,
    );
  }
}
