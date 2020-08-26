import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/data/model/issue.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/author_label.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/updated_at_label.dart';

class IssueFooter extends StatelessWidget {
  IssueFooter({Key key, @required this.issue}) : super(key: key);

  final Issue issue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthorLabel(author: issue.author),
        Center(
          child: UpdatedAtLabel(
            updatedAt: issue.updatedAt,
          ),
        ),
      ],
    );
  }
}
