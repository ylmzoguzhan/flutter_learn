import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  bool isLightTheme = false;

  void changeTema() {
    isLightTheme = !isLightTheme;
    notifyListeners();
  }

  ThemeData get currentTheme =>
      isLightTheme ? ThemeData.light() : ThemeData.dark();
}
