// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;
  ThemeProvider({required bool isDarkMode})
      : currentTheme = isDarkMode
            ? ThemeData(useMaterial3: true, colorScheme: ColorScheme.dark())
            : ThemeData(useMaterial3: true, colorScheme: ColorScheme.light());

  lightMode() {
    currentTheme =
        ThemeData(useMaterial3: true, colorScheme: ColorScheme.light());
    notifyListeners();
  }

  darkMode() {
    currentTheme =
        ThemeData(useMaterial3: true, colorScheme: ColorScheme.dark());
    notifyListeners();
  }
}
