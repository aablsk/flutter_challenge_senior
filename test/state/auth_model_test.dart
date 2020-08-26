import 'package:flutter/cupertino.dart';
import 'package:flutter_challenge_senior/api/graphql/auth.dart';
import 'package:flutter_challenge_senior/service_locator.dart';
import 'package:flutter_challenge_senior/state/auth_model.dart';
import 'package:github_sign_in/github_sign_in.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockGithubAuthClient extends Mock implements GithubAuthClient {}

class MockBuildContext extends Mock implements BuildContext {}

class NotifyListener {
  void callback() {}
}

class MockNotifyListener extends Mock implements NotifyListener {}

main() {
  final client = MockGithubAuthClient();
  MockNotifyListener notifyListener;
  AuthModel authModel;

  setUp(() async {
    sl.registerSingleton<GithubAuthClient>(client);
    authModel = AuthModel();
    notifyListener = MockNotifyListener();
    authModel.addListener(notifyListener.callback);
  });

  tearDown(() {
    authModel.removeListener(notifyListener.callback);
    authModel = null;
    notifyListener = null;
    sl.unregister<GithubAuthClient>();
  });

  group('authenticate', () {
    test('successful login', () async {
      final context = MockBuildContext();
      final result =
          GitHubSignInResult(GitHubSignInResultStatus.ok, token: 'asdf');

      when(client.signIn(context: context)).thenAnswer((_) async => result);

      await authModel.authenticate(context: context);

      // verification
      verify(client.signIn(context: context)).called(1);
      verify(notifyListener.callback()).called(2);
      expect(authModel.token, 'asdf');
      expect(authModel.isLoading, false);
      expect(authModel.errorMessage, null);
      expect(authModel.hasError, false);
      expect(authModel.isAuthenticated, true);
    });

    test('cancelled login', () async {
      final context = MockBuildContext();
      final result = GitHubSignInResult(GitHubSignInResultStatus.cancelled,
          errorMessage: 'asdf');

      when(client.signIn(context: context)).thenAnswer((_) async => result);

      await authModel.authenticate(context: context);

      // verification
      verify(client.signIn(context: context)).called(1);
      verify(notifyListener.callback()).called(2);
      expect(authModel.token, null);
      expect(authModel.isLoading, false);
      expect(authModel.errorMessage, 'asdf');
      expect(authModel.hasError, true);
      expect(authModel.isAuthenticated, false);
    });

    test('failed login', () async {
      final context = MockBuildContext();
      final result = GitHubSignInResult(GitHubSignInResultStatus.failed,
          errorMessage: 'asdf');

      when(client.signIn(context: context)).thenAnswer((_) async => result);

      await authModel.authenticate(context: context);

      // verification
      verify(client.signIn(context: context)).called(1);
      verify(notifyListener.callback()).called(2);
      expect(authModel.token, null);
      expect(authModel.isLoading, false);
      expect(authModel.errorMessage, 'asdf');
      expect(authModel.hasError, true);
      expect(authModel.isAuthenticated, false);
    });
  });

  group('validate username', () {
    test('valid username no hyphens', () {
      final username = 'aablsk';
      expect(authModel.isUsernameValid(username), true);
    });
    test('valid username one hyphen', () {
      final username = 'aablsk-a';
      expect(authModel.isUsernameValid(username), true);
    });
    test('invalid username trailing hyphen', () {
      final username = 'aablsk-';
      expect(authModel.isUsernameValid(username), false);
    });
    test('invalid username too long', () {
      final username = 'aablsk1234aablsk1234aablsk1234aablsk1234';
      expect(authModel.isUsernameValid(username), false);
    });
    test('invalid username contains multiple hyphens after another', () {
      final username = 'aablsk--a';
      expect(authModel.isUsernameValid(username), false);
    });
    test('invalid username contains special character (not hyphen)', () {
      final username = 'aablsk!';
      expect(authModel.isUsernameValid(username), false);
    });
  });

  group('logout', () {
    test('logout from loggedIn state', () async {
      final context = MockBuildContext();
      final result =
          GitHubSignInResult(GitHubSignInResultStatus.ok, token: 'asdf');

      when(client.signIn(context: context)).thenAnswer((_) async => result);

      await authModel.authenticate(context: context);

      // verification
      verify(client.signIn(context: context)).called(1);
      verify(notifyListener.callback()).called(2);
      expect(authModel.token, 'asdf');
      expect(authModel.isLoading, false);
      expect(authModel.errorMessage, null);
      expect(authModel.hasError, false);
      expect(authModel.isAuthenticated, true);

      authModel.logout();
      verify(notifyListener.callback()).called(1);
      expect(authModel.token, null);
      expect(authModel.isLoading, false);
      expect(authModel.errorMessage, null);
      expect(authModel.hasError, false);
      expect(authModel.isAuthenticated, false);
    });

    test('logout from loggedOut state', () {
      authModel.logout();
      verify(notifyListener.callback()).called(1);
      expect(authModel.token, null);
      expect(authModel.isLoading, false);
      expect(authModel.errorMessage, null);
      expect(authModel.hasError, false);
      expect(authModel.isAuthenticated, false);
    });
  });
}
