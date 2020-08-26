import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/data/model/issue.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/issue_item_small.dart';

class RecentIssuesList extends StatelessWidget {
  RecentIssuesList({Key key, this.issues}) : super(key: key);

  final List<Issue> issues;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ...issues.map(
            (issue) => IssueItemSmall(
              issue: issue,
            ),
          ),
        ],
      ),
    );
  }
}
