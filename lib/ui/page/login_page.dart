import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/ui/widget/login/login_form.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(48),
        color: Theme.of(context).colorScheme.background,
        child: Center(
          child: LoginForm(),
        ),
      ),
    );
  }
}
