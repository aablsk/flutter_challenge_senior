import 'package:flutter_challenge_senior/api/graphql/api.dart';
import 'package:flutter_challenge_senior/data/graphql_repository.dart';
import 'package:flutter_challenge_senior/github_api_token.secret.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

void setupServices() {
  sl.registerSingletonAsync<GraphQLApi>(
    () => GraphQLApi().init(GITHUB_API_TOKEN),
  );
  sl.registerSingletonWithDependencies<GraphQLRepository>(
    () => GraphQLRepository(),
    dependsOn: [GraphQLApi],
  );
}
