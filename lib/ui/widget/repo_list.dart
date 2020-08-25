import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/state/repo_list_model.dart';
import 'package:flutter_challenge_senior/ui/widget/list_status.dart';
import 'package:flutter_challenge_senior/ui/widget/repo_list_item.dart';
import 'package:provider/provider.dart';

class RepoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Theme.of(context).colorScheme.primary,
      backgroundColor: Theme.of(context).colorScheme.surface,
      displacement: 50,
      onRefresh: () {
        final repoListModelProvider =
            Provider.of<RepoListModel>(context, listen: false);
        return repoListModelProvider.updateData();
      },
      child: Consumer<RepoListModel>(
        builder: (context, model, _) {
          if (!model.hasData && !model.isLoading && !model.hasError)
            model.updateData();
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
