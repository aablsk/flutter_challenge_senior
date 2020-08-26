import 'package:flutter/material.dart';

class IssueStatusText extends StatelessWidget {
  IssueStatusText({Key key, @required this.closed}) : super(key: key);

  final bool closed;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Text(
      closed ? 'CLOSED' : 'OPEN',
      style: Theme.of(context).textTheme.caption.apply(
            color: closed ? colorScheme.primary : colorScheme.secondary,
            fontWeightDelta: 1,
          ),
    );
  }
}
