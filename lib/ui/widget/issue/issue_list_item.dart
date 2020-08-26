import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/data/model/issue.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/issue_info.dart';

class IssueListItem extends StatelessWidget {
  IssueListItem({Key key, @required this.issue}) : super(key: key);

  final Issue issue;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
      child: InkWell(
        splashColor: Theme.of(context).colorScheme.secondaryVariant,
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            IssueInfo(
              issue: issue,
            ),
          ],
        ),
      ),
    );
  }
}
