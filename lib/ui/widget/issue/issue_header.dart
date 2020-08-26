import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/data/model/issue.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/assignee_label.dart';
import 'package:flutter_challenge_senior/ui/widget/shared/issue_status_text.dart';

class IssueHeader extends StatelessWidget {
  IssueHeader({Key key, @required this.issue}) : super(key: key);

  final Issue issue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          issue.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .headline5
              .apply(color: Theme.of(context).colorScheme.primaryVariant),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AssigneeLabel(
              assignees: issue.assignees,
            ),
            IssueStatusText(closed: issue.closed),
          ],
        )
      ],
    );
  }
}
