// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;
  ThemeProvider({required bool isDarkMode})
      : currentTheme = isDarkMode
            ? ThemeData(
                useMaterial3: true,
                colorScheme: ColorScheme.dark(),
                scaffoldBackgroundColor: Colors.black,
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.black,
                ),
              )
            : ThemeData(
                useMaterial3: true,
                colorScheme: ColorScheme.light(),
                scaffoldBackgroundColor: Colors.white);

  lightMode() {
    currentTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(),
      scaffoldBackgroundColor: Colors.white,
    );
    notifyListeners();
  }

  darkMode() {
    currentTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.dark(),
      appBarTheme: AppBarTheme(backgroundColor: Colors.black),
      scaffoldBackgroundColor: Colors.black,
    );
    notifyListeners();
  }
}
