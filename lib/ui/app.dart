import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_challenge_senior/state/auth_model.dart';
import 'package:flutter_challenge_senior/ui/page/login_page.dart';
import 'package:flutter_challenge_senior/ui/widget/repo/explorer_navigator.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthModel>(
      builder: (context, model, child) {
        if (model.isAuthenticated) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(
              statusBarColor: Theme.of(context).colorScheme.background,
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
                    icon: Icon(Icons.exit_to_app),
                    title: Text('Logout'),
                  )
                ],
                onTap: (value) {
                  if (value == 1)
                    Provider.of<AuthModel>(context, listen: false).logout();
                },
              ),
              body: ExplorerNavigator(),
            ),
          );
        }
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).colorScheme.background,
            statusBarIconBrightness:
                Theme.of(context).colorScheme.brightness == Brightness.light
                    ? Brightness.dark
                    : Brightness.light,
          ),
          child: LoginPage(),
        );
      },
    );
  }
}
