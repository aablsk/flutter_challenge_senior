import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/state/auth_model.dart';
import 'package:provider/provider.dart';

class LoginInput extends StatelessWidget {
  LoginInput({Key key, @required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: Key('login_input_username'),
      decoration: InputDecoration(
        labelText: 'username',
        prefixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 8, 0),
          child: Icon(
            Icons.alternate_email,
            color: Theme.of(context).colorScheme.onSurface.withAlpha(180),
          ),
        ),
      ),
      controller: controller,
      autovalidate: true,
      validator: (username) => Provider.of<AuthModel>(context, listen: false)
              .isUsernameValid(username)
          ? null
          : 'Only alphanumeric characters and hyphens allowed.',
    );
  }
}
