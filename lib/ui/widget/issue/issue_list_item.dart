import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/api/graphql/generated/repo_issues.api.graphql.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/issue_info.dart';

class IssueListItem extends StatelessWidget {
  IssueListItem({Key key, @required this.issue}) : super(key: key);

  final RepoIssues$Query$User$Repository$IssueConnection$Issue issue;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
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
