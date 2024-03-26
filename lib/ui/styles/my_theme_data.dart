import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimaryColor = const Color(0xFFB7935F);
  static Color darkPrimaryColor = const Color(0xFF141A2E);
  static bool isDarkSelected = true;
  static ThemeData lightTheme = ThemeData(
    dividerColor: lightPrimaryColor,
    primaryColor: lightPrimaryColor,
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
      titleMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
      bodyMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.normal, color: Colors.black),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      centerTitle: true,
    ),
    cardColor: lightPrimaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(
        size: 40,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
      titleMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
      bodyMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.normal, color: Colors.yellow),
    ),
    dividerColor: Colors.yellow,
    primaryColor: darkPrimaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
      centerTitle: true,
    ),
    cardColor: darkPrimaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.yellow,
      selectedIconTheme: IconThemeData(
        size: 40,
      ),
    ),
  );
}
