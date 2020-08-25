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
);

CardTheme _cardTheme = CardTheme(
  clipBehavior: Clip.antiAlias,
  color: Colors.white,
  margin: EdgeInsets.symmetric(vertical: 2),
  elevation: 2,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.zero,
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
    color: Colors.white,
  ),
);
