import 'package:flutter/material.dart';

class LightTema {
  final _lightColor = _LightColor();
  late ThemeData theme;

  LightTema() {
    theme = ThemeData(
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.green),
        colorScheme: ColorScheme.light(),
        buttonTheme: ButtonThemeData(
            colorScheme: ColorScheme.light(onPrimary: Colors.purple)),
        textTheme: ThemeData.light().textTheme.copyWith(
            subtitle1: TextStyle(fontSize: 20, color: _lightColor._textColor)));
  }
}

class _LightColor {
  final Color _textColor = Colors.redAccent;
}
