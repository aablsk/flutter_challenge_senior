import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/service_locator.dart';
import 'package:flutter_challenge_senior/state/auth_model.dart';
import 'package:flutter_challenge_senior/ui/app.dart';
import 'package:flutter_challenge_senior/ui/theme/dark_theme.dart';
import 'package:flutter_challenge_senior/ui/theme/light_theme.dart';
import 'package:provider/provider.dart';

void main() {
  setupServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthModel>(
      create: (context) => AuthModel(),
      child: MaterialApp(
        title: 'Issue Explorer',
        theme: lightTheme,
        darkTheme: darkTheme,
        home: App(),
      ),
    );
  }
}
