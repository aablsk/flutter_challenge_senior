import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_challenge_senior/data/graphql_repository.dart';
import 'package:flutter_challenge_senior/service_locator.dart';
import 'package:flutter_challenge_senior/state/auth_model.dart';
import 'package:flutter_challenge_senior/ui/app.dart';
import 'package:flutter_challenge_senior/ui/theme/dark_theme.dart';
import 'package:flutter_challenge_senior/ui/theme/light_theme.dart';
import 'package:flutter_challenge_senior/ui/widget/repo/explorer_navigator.dart';
import 'package:provider/provider.dart';

void main() {
  setupServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthModel>(
      create: (context) => AuthModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: lightTheme,
        darkTheme: darkTheme,
        home: App(), // This trailing comma makes auto-form
      ),
    );
  }
}
