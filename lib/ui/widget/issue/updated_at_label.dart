import 'package:flutter/material.dart';

class UpdatedAtLabel extends StatelessWidget {
  UpdatedAtLabel({Key key, @required this.updatedAt}) : super(key: key);

  final DateTime updatedAt;
  @override
  Widget build(BuildContext context) {
    final diff = DateTime.now().difference(updatedAt);
    if (diff.inDays == 1) {}
    return Text(
      'last update ${_getTimeDiffText(diff)}',
      style: Theme.of(context).textTheme.overline,
    );
  }

  _getTimeDiffText(Duration diff) {
    // more than 24 hours
    if (diff.inDays > 0) {
      if (diff.inDays < 2) {
        return 'yesterday';
      }
      return '${diff.inDays} days ago';
    }
    if (diff.inHours > 0) {
      if (diff.inHours < 2) {
        return 'an hour ago';
      }
      return '${diff.inHours} hours ago';
    }
    if (diff.inMinutes > 0) {
      if (diff.inMinutes < 2) {
        return ' a minute ago';
      }
      return '${diff.inMinutes} minutes ago';
    }
    return 'a moment ago';
  }
}
