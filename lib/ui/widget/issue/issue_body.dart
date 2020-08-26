import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/data/model/issue.dart';

class IssueBody extends StatelessWidget {
  IssueBody({Key key, this.issue}) : super(key: key);

  final Issue issue;

  @override
  Widget build(BuildContext context) {
    return Text(
      issue.bodyText != '' ? issue.bodyText : 'No description.',
      maxLines: 4,
      overflow: TextOverflow.fade,
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}
