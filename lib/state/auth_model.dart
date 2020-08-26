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

  Future<void> authenticate(
      {@required BuildContext context, String login}) async {
    _preFlight();
    // TODO: move this to auth repository and create immutable data classes
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

  bool isUsernameValid(String username) {
    return username.length == 0 ||
        RegExp(
          r"^[a-z\d](?:[a-z\d]|-(?=[a-z\d])){0,38}$",
          caseSensitive: false,
        ).hasMatch(username);
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
