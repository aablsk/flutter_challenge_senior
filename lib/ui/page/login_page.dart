import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_challenge_senior/state/auth_model.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

class LoginPage extends HookWidget {
  bool isUsernameValid(String username) {
    return username.length == 0 ||
        RegExp(
          r"^[a-z\d](?:[a-z\d]|-(?=[a-z\d])){0,38}$",
          caseSensitive: false,
        ).hasMatch(username);
  }

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController(text: null);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(48),
        color: Theme.of(context).colorScheme.background,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'username',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 8, 0),
                    child: Icon(
                      Icons.alternate_email,
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withAlpha(180),
                    ),
                  ),
                ),
                controller: textEditingController,
                //autofocus: true,
                autovalidate: true,
                validator: (username) => isUsernameValid(username)
                    ? null
                    : 'Only alphanumeric characters and hyphens allowed.',
              ),
              SizedBox(height: 16),
              Consumer<AuthModel>(
                builder: (context, model, child) {
                  if (model.isLoading) {
                    return RaisedButton(
                      disabledColor:
                          Theme.of(context).colorScheme.secondaryVariant,
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.0,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Signing you in',
                            style: Theme.of(context).textTheme.button.apply(
                                color: Theme.of(context).colorScheme.onPrimary),
                          )
                        ],
                      ),
                    );
                  }
                  return RaisedButton(
                    child: Text(
                      'Sign in with GitHub',
                      style: Theme.of(context).textTheme.button.apply(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                    onPressed: () =>
                        Provider.of<AuthModel>(context, listen: false)
                            .authenticate(
                      context: context,
                      login: textEditingController.value.text,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
