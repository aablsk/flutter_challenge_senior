import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/api/graphql/generated/repo_list.api.dart';
import 'package:flutter_challenge_senior/ui/widget/repo/recent_issue_list.dart';
import 'package:flutter_challenge_senior/ui/widget/repo/repo_info.dart';

class RepoListItem extends StatelessWidget {
  RepoListItem({Key key, @required this.repo}) : super(key: key);

  final RepoList$Query$User$RepositoryConnection$Repository repo;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, '/issues', arguments: {
          'repoName': repo.name,
        }),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            RepoInfo(
              repo: repo,
            ),
            SizedBox(
              height: 16,
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
