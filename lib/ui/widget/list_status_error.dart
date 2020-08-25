import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/state/repo_list_model.dart';

class ListStatusError extends StatelessWidget {
  ListStatusError({Key key, @required this.errorMessage});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      color: Theme.of(context).colorScheme.error,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Something went wrong 😞',
            style: theme.textTheme.subtitle1.apply(
              color: theme.colorScheme.onError,
            ),
          ),
          Text(
            errorMessage,
            style: theme.textTheme.caption.apply(
              color: theme.colorScheme.onError,
              fontSizeFactor: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
