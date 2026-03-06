import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFF7F7F8),
    colorScheme: const ColorScheme.light(
      primary: Colors.black,
    ),
    useMaterial3: true,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF0E0E10),
    colorScheme: const ColorScheme.dark(
      primary: Colors.white,
    ),
    useMaterial3: true,
  );
}