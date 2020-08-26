import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/state/auth_model.dart';
import 'package:flutter_challenge_senior/ui/widget/login/login_button.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

class MockAuthModel extends Mock implements AuthModel {}

void main() {
  testWidgets('login_button when not loading', (WidgetTester tester) async {
    final authModel = MockAuthModel();
    final TextEditingController controller = TextEditingController();

    when(authModel.isUsernameValid(any)).thenReturn(true);
    when(authModel.isLoading).thenReturn(false);

    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<AuthModel>.value(
          value: authModel,
          child: Scaffold(
            body: LoginButton(
              controller: controller,
            ),
          ),
        ),
      ),
    );

    expect(find.byType(LoginButton), findsOneWidget);
    expect(find.text('Sign in with GitHub'), findsOneWidget);
    expect(find.text('Signing you in...'), findsNothing);
    expect(find.byType(CircularProgressIndicator), findsNothing);
  });

  testWidgets('login_button when loading', (WidgetTester tester) async {
    final authModel = MockAuthModel();
    final TextEditingController controller = TextEditingController();

    when(authModel.isUsernameValid(any)).thenReturn(true);
    when(authModel.isLoading).thenReturn(true);

    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<AuthModel>.value(
          value: authModel,
          child: Scaffold(
            body: LoginButton(
              controller: controller,
            ),
          ),
        ),
      ),
    );

    expect(find.byType(LoginButton), findsOneWidget);
    expect(find.text('Sign in with GitHub'), findsNothing);
    expect(find.text('Signing you in...'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('call authenticate with controller text',
      (WidgetTester tester) async {
    final authModel = MockAuthModel();
    final login = 'asdf';
    final TextEditingController controller = TextEditingController(text: login);

    when(authModel.isUsernameValid(any)).thenReturn(true);
    when(authModel.isLoading).thenReturn(false);

    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<AuthModel>.value(
          value: authModel,
          child: Scaffold(
            body: LoginButton(
              controller: controller,
            ),
          ),
        ),
      ),
    );

    await tester.tap(find.byType(LoginButton));
    verify(
      authModel.authenticate(
        context: anyNamed('context'),
        login: argThat(equals(login), named: 'login'),
      ),
    ).called(1);
  });
}
