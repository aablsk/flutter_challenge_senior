import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/state/auth_model.dart';
import 'package:flutter_challenge_senior/ui/page/login_page.dart';
import 'package:flutter_challenge_senior/ui/widget/login/login_button.dart';
import 'package:flutter_challenge_senior/ui/widget/login/login_form.dart';
import 'package:flutter_challenge_senior/ui/widget/login/login_input.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

class MockAuthModel extends Mock implements AuthModel {}

void main() {
  testWidgets('elements are present', (WidgetTester tester) async {
    final authModel = MockAuthModel();

    when(authModel.isUsernameValid(any)).thenReturn(true);
    when(authModel.isLoading).thenReturn(false);

    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<AuthModel>.value(
          value: authModel,
          child: LoginPage(),
        ),
      ),
    );

    expect(find.byType(LoginButton), findsOneWidget);
    expect(find.byType(LoginInput), findsOneWidget);
    expect(find.byType(LoginForm), findsOneWidget);
  });

  testWidgets('username is used when clicking sign in button',
      (WidgetTester tester) async {
    final authModel = MockAuthModel();
    final login = 'asdf';

    when(authModel.isUsernameValid(any)).thenReturn(true);
    when(authModel.isLoading).thenReturn(false);

    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<AuthModel>.value(
          value: authModel,
          child: LoginPage(),
        ),
      ),
    );

    await tester.tap(find.byType(LoginInput));
    await tester.enterText(find.byType(LoginInput), login);
    await tester.pump(Duration(milliseconds: 1000));
    expect(find.text(login), findsOneWidget);
    await tester.tap(find.byType(LoginButton));
    verify(
      authModel.authenticate(
        context: anyNamed('context'),
        login: argThat(equals(login), named: 'login'),
      ),
    ).called(1);
  });
}
