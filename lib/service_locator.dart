import 'package:flutter_challenge_senior/api/graphql/api.dart';
import 'package:flutter_challenge_senior/api/graphql/auth.dart';
import 'package:flutter_challenge_senior/data/graphql_repository.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

void setupServices() {
  sl.registerSingleton<GithubAuthClient>(GithubAuthClient());
}

void registerGraphQLApi({String token}) {
  sl.registerSingleton<GraphQLApi>(GraphQLApi().init(token));
  sl.registerSingleton<GraphQLRepository>(GraphQLRepository());
}

void unregisterOnLogout() {
  sl.unregister<GraphQLApi>();
  sl.unregister<GraphQLRepository>();
}
