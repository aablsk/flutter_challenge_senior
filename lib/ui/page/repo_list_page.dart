import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/state/repo_list_view_model.dart';
import 'package:flutter_challenge_senior/ui/widget/repo/repo_list.dart';
import 'package:provider/provider.dart';

class RepoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RepoListViewModel(),
      child: Container(
        color: Theme.of(context).colorScheme.background,
        alignment: Alignment.topCenter,
        child: RepoList(),
      ),
    );
  }
}
