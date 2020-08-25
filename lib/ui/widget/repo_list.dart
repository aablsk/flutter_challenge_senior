import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/state/repo_list_model.dart';
import 'package:flutter_challenge_senior/ui/widget/repo_list_item.dart';
import 'package:provider/provider.dart';

class RepoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        final repoListModelProvider =
            Provider.of<RepoListModel>(context, listen: false);
        return repoListModelProvider.updateData();
      },
      child: Consumer<RepoListModel>(
        builder: (context, model, _) {
          if (model.hasError) {
            return Text('There was an error :(');
          }

          if (model.hasData) {
            return Container(
              color: Theme.of(context).backgroundColor,
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (ctx, index) {
                  return RepoListItem(repo: model.repos.elementAt(index));
                },
                itemCount: model.repos.length,
                shrinkWrap: true,
              ),
            );
          } else if (model.isLoading) {
            return CircularProgressIndicator();
          } else {
            // if we don't have data, and aren't currently loading data, update data
            model.updateData();
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
