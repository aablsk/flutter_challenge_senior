import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/data/model/user.dart';
import 'package:flutter_challenge_senior/ui/widget/shared/user_login_avatar.dart';

class AssigneeLabel extends StatelessWidget {
  AssigneeLabel({Key key, @required this.assignees}) : super(key: key);

  // Note: using assignees so we can later show more than just one assignee
  final List<User> assignees;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    if (assignees.length == 0) {
      return Text(
        'Unassigned',
        style: textTheme.caption,
      );
    }
    // TODO: multiple assignees not supported
    return Row(
      children: [
        Text(
          'Assignee - ',
          style: textTheme.caption,
        ),
        UserLoginAvatar(
          login: assignees.first.login,
          avatarUrl: assignees.first.avatarUrl,
          style: textTheme.caption,
        ),
      ],
    );
  }
}
