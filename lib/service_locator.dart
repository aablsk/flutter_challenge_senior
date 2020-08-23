import 'package:flutter_challenge_senior/data/repo_repository.dart';
import 'package:flutter_challenge_senior/github_api_token.secret.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

void setupServices() {
  sl.registerSingletonAsync<GqlRepository>(
      () => GqlRepository().init(GITHUB_API_TOKEN));
}
