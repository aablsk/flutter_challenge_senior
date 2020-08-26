import 'package:flutter/cupertino.dart';
import 'package:flutter_challenge_senior/api/graphql/auth.dart';
import 'package:flutter_challenge_senior/service_locator.dart';
import 'package:github_sign_in/github_sign_in.dart';

class AuthModel extends ChangeNotifier {
  String _token;
  String _errorMessage;
  bool _isLoading = false;

  bool get isAuthenticated => _token != null;
  bool get hasError => _errorMessage != null;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;
  String get token => _token;

  // TODO: write firebase auth implementation from scratch to avoid exposing secrets in app
  // TODO: remove context from this (requires implementing this by oneself)
  Future<void> authenticate(
      {@required BuildContext context, String login}) async {
    _token = "c7ec20000b83e3c7fb099215f0e1340d392da540";
    registerGraphQLApi(token: _token);
    notifyListeners();
    return;
    _preFlight();

    final result =
        await sl.get<GithubAuthClient>().signIn(context: context, login: login);

    switch (result.status) {
      case GitHubSignInResultStatus.ok:
        _token = result.token;
        registerGraphQLApi(token: _token);
        break;

      case GitHubSignInResultStatus.cancelled:
      case GitHubSignInResultStatus.failed:
        _errorMessage = result.errorMessage;
        break;
    }

    _postFlight();
  }

  void logout() {
    _token = null;
    _errorMessage = null;
    _isLoading = false;
    unregisterOnLogout();
    notifyListeners();
  }

  _preFlight() {
    _token = null;
    _errorMessage = null;
    _isLoading = true;
    notifyListeners();
  }

  _postFlight() {
    _isLoading = false;
    notifyListeners();
  }
}
