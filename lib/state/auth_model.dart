import 'package:flutter/cupertino.dart';
import 'package:flutter_challenge_senior/constants.dart';
import 'package:flutter_challenge_senior/github_api_token.secret.dart';
import 'package:github_sign_in/github_sign_in.dart';

class AuthModel extends ChangeNotifier {
  String _token;
  String _errorMessage;
  bool _isLoading = false;

  bool get isAuthenticated => _token != null;
  bool get hasError => _errorMessage != null;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  // TODO: write firebase auth implementation from scratch to avoid exposing secrets in app
  // TODO: remove context from this (requires implementing this by oneself)
  Future<void> authenticate(
      {@required BuildContext context, String login}) async {
    final GitHubSignIn gitHubSignIn = GitHubSignIn(
      clientId: GITHUB_API_CLIENT_ID,
      clientSecret: GITHUB_API_CLIENT_SECRET,
      redirectUrl:
          "https://flutter-challenge-senior.firebaseapp.com/__/auth/handler",
      scope: GITHUB_GRAPHQL_API_SCOPE,
      login: login,
    );

    _preFlight();

    final result = await gitHubSignIn.signIn(context);

    switch (result.status) {
      case GitHubSignInResultStatus.ok:
        _token = result.token;
        break;

      case GitHubSignInResultStatus.cancelled:
      case GitHubSignInResultStatus.failed:
        _errorMessage = result.errorMessage;
        break;
    }

    _postFlight();
  }

  _preFlight() {
    _token = null;
    _errorMessage = null;
    _isLoading = true;
  }

  _postFlight() {
    _isLoading = false;
  }
}
