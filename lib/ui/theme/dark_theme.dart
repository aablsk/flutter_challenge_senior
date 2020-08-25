import 'package:flutter/material.dart';

ColorScheme _colorScheme = ColorScheme.dark(
  primary: Colors.indigo[300],
  primaryVariant: Colors.indigo[200],
  secondary: Colors.deepOrange[400],
  secondaryVariant: Colors.deepOrange[300],
  background: Color.fromRGBO(24, 24, 24, 1),
  surface: Color.fromRGBO(24, 24, 24, 1),
  brightness: Brightness.dark,
);

CardTheme _cardTheme = CardTheme(
  shadowColor: Colors.black,
  color: Colors.white10,
  clipBehavior: Clip.antiAlias,
  margin: EdgeInsets.symmetric(vertical: 2),
  elevation: 1,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.zero,
  ),
);

ThemeData darkTheme = ThemeData(
  primaryColor: _colorScheme.primary,
  primaryColorDark: _colorScheme.primaryVariant,
  accentColor: _colorScheme.secondary,
  backgroundColor: _colorScheme.background,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  cardTheme: _cardTheme,
  colorScheme: _colorScheme,
  bottomAppBarTheme: BottomAppBarTheme(
    elevation: 2,
  ),
);
