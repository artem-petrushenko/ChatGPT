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
        fontFamily: 'Poppins',
        colorSchemeSeed: const Color(0xFFE9A322),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Color(0xFFE9A322),
        ),
        chipTheme: const ChipThemeData(
          backgroundColor: Color(0xFFF1F3F3),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          suffixIconColor: Color(0xFF000000),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF000000), width: 1.5),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF000000), width: 1.5),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF000000), width: 1.5),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF000000), width: 1.5),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF000000), width: 1.5),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF000000), width: 1.5),
          ),
        ),
        snackBarTheme: const SnackBarThemeData(
          contentTextStyle: TextStyle(
            color: Color(0xFF000000),
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          backgroundColor: Color(0xFFFFFFFF),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xFF000000),
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          // elevation: 0.0,
        ),
        appBarTheme: const AppBarTheme(
          surfaceTintColor: Color(0xFFFFFFFF),
          color: Color(0xFFFFFFFF),
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
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
