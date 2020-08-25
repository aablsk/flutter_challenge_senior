import 'package:flutter/material.dart';

class ListContainer extends StatelessWidget {
  ListContainer({Key key, this.onRefresh, this.child}) : super(key: key);

  final Future<void> Function() onRefresh;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Theme.of(context).colorScheme.primary,
      backgroundColor: Theme.of(context).colorScheme.surface,
      displacement: 50,
      onRefresh: onRefresh,
      child: child,
    );
  }
}
