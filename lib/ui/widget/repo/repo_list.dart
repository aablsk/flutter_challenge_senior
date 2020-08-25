import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/state/repo_list_model.dart';
import 'package:flutter_challenge_senior/ui/widget/shared/list_container.dart';
import 'package:flutter_challenge_senior/ui/widget/shared/list_status.dart';
import 'package:flutter_challenge_senior/ui/widget/repo/repo_list_item.dart';
import 'package:provider/provider.dart';

class RepoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListContainer(
      onRefresh: () =>
          Provider.of<RepoListModel>(context, listen: false).updateData(),
      child: Consumer<RepoListModel>(
        builder: (context, model, _) {
          return ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (ctx, index) {
              if (index == 0) {
                return ListStatusItem(model: model);
              }
              return RepoListItem(repo: model.repos.elementAt(index - 1));
            },
            itemCount: model.hasData ? 1 + model.repos.length : 1,
            //shrinkWrap: true,
          );
        },
      ),
    );
  }
}
