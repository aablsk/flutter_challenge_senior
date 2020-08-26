import 'dart:async';

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Login flow', () {
    final loginInputFinder = find.byValueKey('login_input_username');
    final loginSignInButtonFinder = find.byValueKey('login_sign_in_button');

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('login field is empty', () async {
      expect(await driver.getText(loginInputFinder), '');
    });

    test('username can be inputted', () async {
      await driver.tap(loginInputFinder);
      await driver.enterText('aablsk');
      expect(await driver.getText(loginInputFinder), 'aablsk');
    });

    test('clicking on signin navigates to another page/webbrowser', () async {
      await driver.tap(loginSignInButtonFinder);
      await Future.delayed(Duration(milliseconds: 3000));
      // workaround since flutter driver currently doesn't support checking for non-existent items
      try {
        await driver.waitFor(
          loginInputFinder,
          timeout: Duration(milliseconds: 1000),
        );
      } catch (e) {
        if (!(e is DriverError)) throw (Error());
      }

      try {
        await driver.waitFor(
          loginSignInButtonFinder,
          timeout: Duration(milliseconds: 1000),
        );
      } catch (e) {
        if (!(e is DriverError)) throw (Error());
      }
    });
  });
}
