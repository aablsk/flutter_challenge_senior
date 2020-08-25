import 'package:flutter/cupertino.dart';
import 'package:flutter_challenge_senior/state/list_model.dart';
import 'package:flutter_challenge_senior/ui/widget/shared/list_status_error.dart';
import 'package:flutter_challenge_senior/ui/widget/shared/list_status_loading.dart';

class ListStatusItem extends StatelessWidget {
  ListStatusItem({Key key, @required this.model});
  final ListModel model;

  @override
  Widget build(BuildContext context) {
    if (model.hasError) {
      return ListStatusError(errorMessage: model.errorMessage);
    }

    if (model.isLoading) {
      return ListStatusLoading();
    }

    if (!model.isLoading && !model.hasError && !model.hasData) {
      return Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(child: Text('No data available 😞')),
      );
    }

    return Container();
  }
}
