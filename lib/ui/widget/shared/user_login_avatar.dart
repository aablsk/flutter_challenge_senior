import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserLoginAvatar extends StatelessWidget {
  UserLoginAvatar(
      {Key key, @required this.avatarUrl, @required this.login, this.style})
      : super(key: key);

  final String avatarUrl;
  final String login;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(login, style: style ?? Theme.of(context).textTheme.overline),
        SizedBox(
          width: 2,
        ),
        CircleAvatar(
          maxRadius: 8,
          backgroundImage: NetworkImage(avatarUrl),
        ),
      ],
    );
  }
}
