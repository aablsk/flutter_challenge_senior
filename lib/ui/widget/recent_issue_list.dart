import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/api/graphql/generated/repo_list.api.dart';
import 'package:flutter_challenge_senior/ui/widget/issue_counter.dart';
import 'package:flutter_challenge_senior/ui/widget/issue_item_small.dart';

class RecentIssueList extends StatelessWidget {
  RecentIssueList({Key key, @required this.repo}) : super(key: key);

  final RepoList$Query$User$RepositoryConnection$Repository repo;

  @override
  Widget build(BuildContext context) {
    final issues = repo.issues.nodes.length > 0 ? repo.issues.nodes : null;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
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
            color: Colors.grey[100],
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
