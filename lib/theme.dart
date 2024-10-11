import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.white,
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 250, 215, 215),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      //subtitle1: TextStyle(
      //  fontSize: 18,
      //  color: Colors.black87,
    ),
  );
}
