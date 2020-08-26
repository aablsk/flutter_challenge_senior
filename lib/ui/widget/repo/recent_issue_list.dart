import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/data/model/repository.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/issue_counter.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/issue_item_small.dart';

class RecentIssueList extends StatelessWidget {
  RecentIssueList({Key key, @required this.repo}) : super(key: key);

  final Repository repo;

  @override
  Widget build(BuildContext context) {
    final issues = repo.issues.length > 0 ? repo.issues : null;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 2),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most recent issues',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  IssueCounter(repo: repo),
                ]),
          ),
          Container(
            child: Column(
              children: [
                ...issues.map(
                  (issue) => IssueItemSmall(
                    issue: issue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
