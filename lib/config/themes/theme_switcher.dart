import 'package:flutter/material.dart';

class ThemeSwithcer {
  static getLightTheme() {
    return ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 50.0,
        backgroundColor: Colors.teal,
        brightness: Brightness.dark,
      ),
    );
  }

  static getDarkTheme() {
    return ThemeData.dark().copyWith(
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 50.0,
        backgroundColor: Colors.blueGrey,
        brightness: Brightness.light,
      ),
    );
  }
}