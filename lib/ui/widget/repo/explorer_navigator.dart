import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/ui/page/issue_list_page.dart';
import 'package:flutter_challenge_senior/ui/page/repo_list_page.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ExplorerNavigator extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final navKey =
        useState<GlobalKey<NavigatorState>>(GlobalKey<NavigatorState>());
    return WillPopScope(
      onWillPop: () async {
        navKey.value.currentState.maybePop();
        return false;
      },
      child: Navigator(
        key: navKey.value,
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              switch (settings.name) {
                case '/':
                  return RepoListPage();
                case '/issues':
                  return IssueListPage(
                      repoName: (settings.arguments as Map)['repoName']);
              }
              return Text('Invalid route.');
            },
          );
        },
      ),
    );
  }
}
