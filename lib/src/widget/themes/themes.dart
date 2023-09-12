import 'package:flutter/material.dart';

class Themes {
  static const primaryColor = Color(0xFFE9A322);
  static const accentColor = Color(0xFF000000);
  static const backgroundColor = Color(0xFFFFFFFF);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    colorSchemeSeed: primaryColor,
    iconTheme: const IconThemeData(color: accentColor),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: primaryColor,
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: Color(0xFFF1F3F3),
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
    snackBarTheme: SnackBarThemeData(
      contentTextStyle: const TextStyle(
        color: accentColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
      backgroundColor: backgroundColor,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: accentColor, width: 2.0),
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
    appBarTheme: const AppBarTheme(
      surfaceTintColor: backgroundColor,
      color: backgroundColor,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30.0,
        fontWeight: FontWeight.w600,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: backgroundColor,
    ),
    scaffoldBackgroundColor: backgroundColor,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: primaryColor,
  );
}
