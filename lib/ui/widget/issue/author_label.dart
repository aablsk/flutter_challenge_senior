import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/data/model/user.dart';
import 'package:flutter_challenge_senior/ui/widget/shared/user_login_avatar.dart';

class AuthorLabel extends StatelessWidget {
  AuthorLabel({Key key, @required this.author}) : super(key: key);

  // using assignees so we can later show more than just one assignee
  final User author;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Author - ',
          style: textTheme.overline,
        ),
        UserLoginAvatar(
          login: author.login,
          avatarUrl: author.avatarUrl,
        ),
      ],
    );
  }
}
