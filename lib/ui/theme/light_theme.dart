import 'package:flutter/material.dart';

ColorScheme _colorScheme = ColorScheme.light(
  background: Colors.grey[100],
  surface: Colors.white,
  primary: Colors.indigo,
  primaryVariant: Colors.indigo[800],
  onPrimary: Colors.white,
  secondary: Colors.deepOrange[500],
  secondaryVariant: Colors.deepOrange[300],
  onSecondary: Colors.black,
  brightness: Brightness.light,
);

CardTheme _cardTheme = CardTheme(
  clipBehavior: Clip.antiAlias,
  color: _colorScheme.surface,
  margin: EdgeInsets.symmetric(vertical: 2),
  elevation: 2,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.zero,
  ),
);

final _inputDecorationTheme = InputDecorationTheme(
  contentPadding: EdgeInsets.symmetric(
    vertical: 20,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(32),
  ),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(32),
      borderSide: BorderSide(
        color: _colorScheme.primary,
      )),
  helperMaxLines: 1,
  labelStyle: TextStyle(
    color: _colorScheme.onSurface.withAlpha(120),
  ),
);

final _buttonTheme = ButtonThemeData(
  buttonColor: _colorScheme.primary,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(32),
  ),
);

ThemeData lightTheme = ThemeData(
  primaryColor: _colorScheme.primary,
  primaryColorDark: _colorScheme.primaryVariant,
  accentColor: _colorScheme.secondary,
  backgroundColor: _colorScheme.background,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  cardTheme: _cardTheme,
  colorScheme: _colorScheme,
  bottomAppBarTheme: BottomAppBarTheme(
    elevation: 2,
    color: _colorScheme.surface,
  ),
  inputDecorationTheme: _inputDecorationTheme,
  buttonTheme: _buttonTheme,
);
