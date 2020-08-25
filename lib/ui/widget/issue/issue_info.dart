import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/api/graphql/generated/repo_issues.api.graphql.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/assignee_label.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/author_label.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/updated_at_label.dart';

class IssueInfo extends StatelessWidget {
  IssueInfo({Key key, this.issue}) : super(key: key);
  final RepoIssues$Query$User$Repository$IssueConnection$Issue issue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          Text(
            issue.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.headline5
                .apply(color: Theme.of(context).colorScheme.primary),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AssigneeLabel(
                assignees: issue.assignees.nodes,
              ),
              Text(
                issue.closed ? 'CLOSED' : 'OPEN',
                style: Theme.of(context).textTheme.caption.apply(
                      color: issue.closed
                          ? theme.colorScheme.primary
                          : theme.colorScheme.secondary,
                      fontWeightDelta: 1,
                    ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            issue.bodyText != '' ? issue.bodyText : 'No description.',
            maxLines: 4,
            overflow: TextOverflow.fade,
            style: theme.textTheme.bodyText2,
          ),
          SizedBox(
            height: 16,
          ),
          Center(
            child: UpdatedAtLabel(
              updatedAt: issue.updatedAt,
            ),
          ),
          AuthorLabel(author: issue.author),
        ],
      ),
    );
  }
}
