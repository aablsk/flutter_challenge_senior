import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/api/graphql/generated/repo_list.api.dart';

class IssueCounter extends StatelessWidget {
  IssueCounter({Key key, @required this.repo}) : super(key: key);

  final RepoList$Query$User$RepositoryConnection$Repository repo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            '${repo.issues.totalCount.toString()} Issue${repo.issues.totalCount > 1 || repo.issues.totalCount == 0 ? "s" : ""}',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
      ],
    );
  }
}
