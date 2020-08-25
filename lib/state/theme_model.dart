import 'package:flutter/material.dart';

class ThemeModel extends ChangeNotifier {
  ThemeModel({@required ThemeData lightTheme, @required ThemeData darkTheme}) {
    _lightTheme = lightTheme;
    _darkTheme = darkTheme;
  }

  ThemeData _lightTheme;
  ThemeData _darkTheme;
  bool _isDark = false;

  ThemeData get currentTheme => _isDark ? _darkTheme : _lightTheme;

  void switchTheme() {
    _isDark = !_isDark;
  }
}
