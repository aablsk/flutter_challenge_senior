import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/data/model/repository.dart';
import 'package:flutter_challenge_senior/ui/widget/repo/recent_issues_list.dart';
import 'package:flutter_challenge_senior/ui/widget/repo/recent_issues_list_header.dart';

class RecentIssues extends StatelessWidget {
  RecentIssues({Key key, @required this.repo}) : super(key: key);

  final Repository repo;

  @override
  Widget build(BuildContext context) {
    final issues = repo.issues.length > 0 ? repo.issues : null;
    if (issues == null) return Container();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        RecentIssuesHeader(
          issueCount: repo.issueCount,
        ),
        RecentIssuesList(issues: issues),
      ],
    );
  }
}
