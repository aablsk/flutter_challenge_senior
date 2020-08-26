import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/ui/widget/login/login_button.dart';
import 'package:flutter_challenge_senior/ui/widget/login/login_input.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginForm extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController(text: null);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LoginInput(controller: textEditingController),
        SizedBox(height: 16),
        LoginButton(
            key: Key('login_sign_in_button'),
            controller: textEditingController),
      ],
    );
  }
}
