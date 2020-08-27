import 'package:flutter/cupertino.dart';
import 'package:flutter_challenge_senior/constants.dart';
import 'package:flutter_challenge_senior/github_api_token.secret.dart';
import 'package:github_sign_in/github_sign_in.dart';

/**
 * This class is used to authenticate with Github OAuth flow
 * TODO: Implementation is not production grade due to several reasons:
 * - exposes clientId and clientSecret in frontend
 * - needed to be enhanced to support login prefill
 * - invalid action window is shown shortly after successful authentication
 */
class GithubAuthClient {
  Future<GitHubSignInResult> signIn(
      {@required BuildContext context, String login}) async {
    final GitHubSignIn gitHubSignIn = GitHubSignIn(
      clientId: GITHUB_API_CLIENT_ID,
      clientSecret: GITHUB_API_CLIENT_SECRET,
      redirectUrl: GITHUB_API_OAUTH_REDIRECT_URL,
      scope: GITHUB_API_OAUTH_SCOPE,
      login: login,
    );

    return await gitHubSignIn.signIn(context);
  }
}
