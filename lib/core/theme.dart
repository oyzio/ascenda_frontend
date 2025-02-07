import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(

    scaffoldBackgroundColor: Colors.transparent,


    textTheme: const TextTheme(

      bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white70),
    ),


    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(

        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );
}
