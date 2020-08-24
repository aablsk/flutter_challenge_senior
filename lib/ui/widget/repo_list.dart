import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/state/repo_list_model.dart';
import 'package:provider/provider.dart';

class RepoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<RepoListModel>(
      builder: (context, model, _) {
        if (model.hasError) {
          return Text('There was an error :(');
        }

        if (model.hasData) {
          return Text('Has data!');
        } else if (model.isLoading) {
          return CircularProgressIndicator();
        } else {
          // if we don't have data, and aren't currently loading data, update data
          model.updateData();
          return CircularProgressIndicator();
        }
      },
    );
  }
}
