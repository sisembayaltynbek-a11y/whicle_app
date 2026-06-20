import 'package:flutter/material.dart';

class MyAppTheme {
  static const Color primaryColor = Color.fromARGB(255, 9, 116, 159);
  static const Color accentColor = Colors.orange;
  static const Color backgroundColor = Colors.white;
  static const Color textColor = Colors.black;

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Color.fromARGB(255, 255, 255, 255),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: textColor),
      bodyLarge: TextStyle(color: textColor),
      titleMedium: TextStyle(color: textColor),
      titleLarge: TextStyle(color: textColor),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    cardTheme: const CardThemeData(
      color: primaryColor,
      shadowColor: Colors.black45,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
  );
}
