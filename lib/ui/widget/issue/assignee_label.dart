import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/api/graphql/generated/repo_issues.api.graphql.dart';
import 'package:flutter_challenge_senior/ui/widget/shared/user_login_avatar.dart';

class AssigneeLabel extends StatelessWidget {
  AssigneeLabel({Key key, @required this.assignees}) : super(key: key);

  // using assignees so we can later show more than just one assignee
  final List<
          RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection$User>
      assignees;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    if (assignees.length == 0) {
      return Text(
        'Unassigned',
        style: textTheme.overline,
      );
    }
    // TODO: multiple assignees not supported
    return Row(
      children: [
        Text(
          'Assignee - ',
          style: textTheme.overline,
        ),
        UserLoginAvatar(
          login: assignees.first.login,
          avatarUrl: assignees.first.avatarUrl,
        ),
      ],
    );
  }
}
