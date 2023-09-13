import 'package:flutter/material.dart';

class DarkTheme {
  static const primaryColor = Color(0xFFE9A322);
  static const accentColor = Color(0xFFFFFFFF);
  static const backgroundColor = Color(0xFF000000);
  static const onBackgroundColor = Color(0xFFFFFFFF);
  static const errorColor = Color(0xFFB3261E);

  static ThemeData themeData = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    iconTheme: const IconThemeData(color: accentColor),
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      background: backgroundColor,
      onBackground: onBackgroundColor,
      brightness: Brightness.dark,
      error: errorColor,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: primaryColor,
    ),
    chipTheme: const ChipThemeData(
      labelStyle: TextStyle(
        color: onBackgroundColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
      backgroundColor: backgroundColor,
      side: BorderSide(color: onBackgroundColor, width: 1.5),
      shape: StadiumBorder(),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      suffixIconColor: accentColor,
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: accentColor, width: 1.5),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: accentColor, width: 1.5),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: accentColor, width: 1.5),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: accentColor, width: 1.5),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: accentColor, width: 1.5),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: accentColor, width: 1.5),
      ),
    ),
    snackBarTheme: const SnackBarThemeData(
      contentTextStyle: TextStyle(
        color: accentColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
      backgroundColor: backgroundColor,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: accentColor, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
    ),
    listTileTheme: const ListTileThemeData(),
    appBarTheme: const AppBarTheme(
      surfaceTintColor: backgroundColor,
      color: backgroundColor,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        fontWeight: FontWeight.w600,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: backgroundColor,
      elevation: 0.0,
      modalElevation: 0.0,
      showDragHandle: true,
    ),
    scaffoldBackgroundColor: backgroundColor,
  );
}
