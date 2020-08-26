import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/issue_counter.dart';

class RecentIssuesHeader extends StatelessWidget {
  RecentIssuesHeader({Key key, @required this.issueCount}) : super(key: key);

  final int issueCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 2),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          'Most recent issues',
          style: Theme.of(context).textTheme.subtitle2,
        ),
        IssueCounter(
          issueCount: issueCount,
        ),
      ]),
    );
  }
}
