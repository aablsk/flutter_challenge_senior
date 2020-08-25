import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/api/graphql/generated/repo_list.api.dart';
import 'package:flutter_challenge_senior/state/repo_list_model.dart';
import 'package:provider/provider.dart';

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
            '${repo.issues.totalCount.toString()} Issues',
            style: Theme.of(context).textTheme.subtitle2.apply(
                  color: Theme.of(context).accentColor,
                ),
          ),
        ),
      ],
    );
  }
}
