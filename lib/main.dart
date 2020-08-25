import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/data/graphql_repository.dart';
import 'package:flutter_challenge_senior/service_locator.dart';
import 'package:flutter_challenge_senior/ui/page/repo_list_page.dart';
import 'package:flutter_challenge_senior/ui/theme/light_theme.dart';

void main() {
  setupServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      home: FutureBuilder(
        builder: (context, _) => Scaffold(
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.view_list),
              title: Text('Explore'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
            )
          ]),
          body: Center(
            child: RepoListPage(),
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.

        future: sl.getAsync<GraphQLRepository>(),
      ),
    );
  }
}
