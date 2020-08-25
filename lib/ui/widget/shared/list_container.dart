import 'package:flutter/material.dart';

class ListContainer extends StatelessWidget {
  ListContainer({Key key, this.onRefresh, this.child}) : super(key: key);

  final Future<void> Function() onRefresh;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: RefreshIndicator(
        color: Theme.of(context).colorScheme.primary,
        displacement: 50,
        onRefresh: onRefresh,
        child: child,
      ),
    );
  }
}
