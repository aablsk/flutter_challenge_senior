import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/api/graphql/generated/repo_list.api.dart';
import 'package:flutter_challenge_senior/ui/widget/recent_issue_list.dart';
import 'package:flutter_challenge_senior/ui/widget/repo_info.dart';

class RepoListItem extends StatelessWidget {
  RepoListItem({Key key, @required this.repo}) : super(key: key);

  final RepoList$Query$User$RepositoryConnection$Repository repo;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            RepoInfo(
              repo: repo,
            ),
            SizedBox(
              height: 8,
            ),
            repo.issues.nodes.length > 0
                ? RecentIssueList(
                    repo: repo,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
