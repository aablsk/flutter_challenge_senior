import 'package:flutter_challenge_senior/data_provider/graphql/api.dart';
import 'package:flutter_challenge_senior/data_provider/graphql/auth.dart';
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
  try {
    sl.unregister<GraphQLApi>();
  } catch (err) {
    print('Error happened while unregistering GraphQLApi on logout');
  }
  try {
    sl.unregister<GraphQLRepository>();
  } catch (err) {
    print('Error happened while unregistering GraphQLApi on logout');
  }
}
