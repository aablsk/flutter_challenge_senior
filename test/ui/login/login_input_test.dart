import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/state/auth_model.dart';
import 'package:flutter_challenge_senior/ui/widget/login/login_input.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

class MockAuthModel extends Mock implements AuthModel {}

void main() {
  testWidgets('login_form valid username', (WidgetTester tester) async {
    final authModel = MockAuthModel();
    final login = 'asdf';
    final TextEditingController controller = TextEditingController();

    when(authModel.isUsernameValid(any)).thenReturn(true);
    when(authModel.isLoading).thenReturn(false);

    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<AuthModel>.value(
          value: authModel,
          child: Scaffold(
            body: LoginInput(
              controller: controller,
            ),
          ),
        ),
      ),
    );

    expect(find.byType(LoginInput), findsOneWidget);
    expect(find.text('Only alphanumeric characters and hyphens allowed.'),
        findsNothing);
    // put in login
    await tester.tap(find.byType(LoginInput));
    await tester.enterText(find.byType(LoginInput), login);
    await tester.pump(Duration(milliseconds: 1000));
    expect(find.text('Only alphanumeric characters and hyphens allowed.'),
        findsNothing);
  });

  testWidgets('login_form invalid username', (WidgetTester tester) async {
    final authModel = MockAuthModel();
    final login = 'asdf';
    final TextEditingController controller = TextEditingController();

    when(authModel.isUsernameValid(any)).thenReturn(true);
    when(authModel.isLoading).thenReturn(false);

    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<AuthModel>.value(
          value: authModel,
          child: Scaffold(
            body: LoginInput(
              controller: controller,
            ),
          ),
        ),
      ),
    );

    expect(find.byType(LoginInput), findsOneWidget);
    expect(find.text('Only alphanumeric characters and hyphens allowed.'),
        findsNothing);
    // put in login
    when(authModel.isUsernameValid(any)).thenReturn(false);
    await tester.tap(find.byType(LoginInput));
    await tester.enterText(find.byType(LoginInput), login);
    await tester.pump(Duration(milliseconds: 1000));
    expect(find.text('Only alphanumeric characters and hyphens allowed.'),
        findsOneWidget);
  });
}
