import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/data/model/issue.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/issue_body.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/issue_footer.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/issue_header.dart';

class IssueInfo extends StatelessWidget {
  IssueInfo({Key key, this.issue}) : super(key: key);
  final Issue issue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          IssueHeader(issue: issue),
          SizedBox(
            height: 16,
          ),
          IssueBody(issue: issue),
          SizedBox(
            height: 16,
          ),
          IssueFooter(issue: issue),
        ],
      ),
    );
  }
}
