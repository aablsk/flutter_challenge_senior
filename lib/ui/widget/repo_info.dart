import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/api/graphql/generated/repo_list.api.dart';

class RepoInfo extends StatelessWidget {
  RepoInfo({Key key, this.repo}) : super(key: key);
  final RepoList$Query$User$RepositoryConnection$Repository repo;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          Text(
            repo.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.headline4
                .apply(color: Theme.of(context).colorScheme.primary),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            repo.description ?? '',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
