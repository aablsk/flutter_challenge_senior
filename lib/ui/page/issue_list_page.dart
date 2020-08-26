import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/state/issue_list_view_model.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/issue_list.dart';
import 'package:provider/provider.dart';

class IssueListPage extends StatelessWidget {
  IssueListPage({Key key, @required this.repoName}) : super(key: key);
  final String repoName;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => IssueListViewModel(repoName: repoName),
      child: Container(
        alignment: Alignment.topCenter,
        child: IssueList(),
      ),
    );
  }
}
