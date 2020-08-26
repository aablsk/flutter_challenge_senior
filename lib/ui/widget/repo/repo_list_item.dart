import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/data/model/repository.dart';
import 'package:flutter_challenge_senior/ui/widget/repo/recent_issue_list.dart';
import 'package:flutter_challenge_senior/ui/widget/repo/repo_info.dart';

class RepoListItem extends StatelessWidget {
  RepoListItem({Key key, @required this.repo}) : super(key: key);

  final Repository repo;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
      child: InkWell(
        splashColor: Theme.of(context).colorScheme.secondaryVariant,
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
            repo.issues.length > 0
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
