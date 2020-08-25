import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListStatusLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      alignment: Alignment.center,
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 32),
      color: Theme.of(context).colorScheme.primary,
      child: Text(
        'Getting fresh data just for you... 🧐',
        style:
            theme.textTheme.bodyText1.apply(color: theme.colorScheme.onPrimary),
      ),
    );
  }
}
