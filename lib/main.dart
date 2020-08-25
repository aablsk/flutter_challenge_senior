import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_challenge_senior/data/graphql_repository.dart';
import 'package:flutter_challenge_senior/service_locator.dart';
import 'package:flutter_challenge_senior/state/auth_model.dart';
import 'package:flutter_challenge_senior/ui/theme/dark_theme.dart';
import 'package:flutter_challenge_senior/ui/theme/light_theme.dart';
import 'package:flutter_challenge_senior/ui/widget/repo/explorer_navigator.dart';
import 'package:provider/provider.dart';

void main() {
  setupServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthModel>(
      create: (context) => AuthModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: lightTheme,
        darkTheme: darkTheme,
        home: FutureBuilder(
          builder: (context, _) => AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(
              statusBarColor:
                  Theme.of(context).colorScheme.background.withOpacity(0.5),
              statusBarIconBrightness:
                  Theme.of(context).colorScheme.brightness == Brightness.light
                      ? Brightness.dark
                      : Brightness.light,
            ),
            child: Scaffold(
              backgroundColor: Theme.of(context).colorScheme.background,
              bottomNavigationBar: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.view_list),
                    title: Text('Explore'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    title: Text('Settings'),
                  )
                ],
                onTap: (value) {
                  if (value == 1)
                    Provider.of<AuthModel>(context, listen: false)
                        .authenticate(context: context, login: 'aablsk');
                },
              ),
              body: ExplorerNavigator(),
            ),
          ), // This trailing comma makes auto-formatting nicer for build methods.

          future: sl.getAsync<GraphQLRepository>(),
        ),
      ),
    );
  }
}
