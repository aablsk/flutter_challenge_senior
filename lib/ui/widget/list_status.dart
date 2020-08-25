import 'package:flutter/cupertino.dart';
import 'package:flutter_challenge_senior/state/repo_list_model.dart';
import 'package:flutter_challenge_senior/ui/widget/list_status_error.dart';
import 'package:flutter_challenge_senior/ui/widget/list_status_loading.dart';

class ListStatusItem extends StatelessWidget {
  ListStatusItem({Key key, @required this.model});
  final RepoListModel model;

  @override
  Widget build(BuildContext context) {
    if (model.hasError) {
      return ListStatusError(errorMessage: model.errorMessage);
    }

    if (model.isLoading) {
      return ListStatusLoading();
    }

    return Container();
  }
}
