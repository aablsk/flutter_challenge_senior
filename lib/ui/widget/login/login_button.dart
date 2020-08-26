import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/state/auth_model.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatelessWidget {
  LoginButton({Key key, @required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthModel>(
      builder: (context, model, child) {
        if (model.isLoading) {
          return RaisedButton(
            onPressed: null,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.0,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  'Signing you in...',
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .apply(color: Theme.of(context).colorScheme.onPrimary),
                )
              ],
            ),
          );
        }
        return RaisedButton(
          child: Text(
            'Sign in with GitHub',
            style: Theme.of(context)
                .textTheme
                .button
                .apply(color: Theme.of(context).colorScheme.onPrimary),
          ),
          onPressed: () =>
              Provider.of<AuthModel>(context, listen: false).authenticate(
            context: context,
            login: controller.value.text,
          ),
        );
      },
    );
  }
}
