import 'package:flutter/material.dart';

class IssueCounter extends StatelessWidget {
  IssueCounter({Key key, @required this.issueCount}) : super(key: key);

  final int issueCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            '${issueCount.toString()} Issue${issueCount > 1 || issueCount == 0 ? "s" : ""}',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
      ],
    );
  }
}
