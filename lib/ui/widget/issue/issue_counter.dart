import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/api/graphql/generated/repo_list.api.dart';
import 'package:flutter_challenge_senior/data/model/repo_list.dart';

class IssueCounter extends StatelessWidget {
  IssueCounter({Key key, @required this.repo}) : super(key: key);

  final Repository repo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            '${repo.issueCount.toString()} Issue${repo.issueCount > 1 || repo.issueCount == 0 ? "s" : ""}',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
      ],
    );
  }
}
