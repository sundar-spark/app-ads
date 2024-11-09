// light_theme.dart
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.blue,
      highlightColor: Colors.orange,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      
      // Define other properties
      appBarTheme: const AppBarTheme(
        color: Colors.blue,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blue),
        bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
         bodyLarge: TextStyle(fontSize: 22, color: Colors.black,)
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          textStyle: TextStyle(fontSize: 18),
        ),
      ),
    );
  }




  //!Dark Theme
    static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.blue,
      highlightColor: Colors.orange,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      
      // Define other properties
      appBarTheme: const AppBarTheme(
        color: Colors.blue,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme:const  TextTheme(
        headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blue),
        bodyMedium:  TextStyle(fontSize: 16, color: Colors.white),
        bodyLarge: TextStyle(fontSize: 22, color: Colors.white)
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          textStyle: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
