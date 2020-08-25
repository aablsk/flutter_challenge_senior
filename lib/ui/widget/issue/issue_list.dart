import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/state/issue_list_model.dart';
import 'package:flutter_challenge_senior/ui/widget/issue/issue_list_item.dart';
import 'package:flutter_challenge_senior/ui/widget/shared/list_container.dart';
import 'package:flutter_challenge_senior/ui/widget/shared/list_status.dart';
import 'package:provider/provider.dart';

class IssueList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListContainer(
      onRefresh: () =>
          Provider.of<IssueListModel>(context, listen: false).updateData(),
      child: Consumer<IssueListModel>(
        builder: (context, model, _) {
          return ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (ctx, index) {
              // TODO: add header to summarize Repo info
              if (index == 0) {
                return ListStatusItem(model: model);
              }
              return IssueListItem(issue: model.issues.elementAt(index - 1));
            },
            itemCount: model.hasData ? 1 + model.issues.length : 1,
          );
        },
      ),
    );
  }
}
