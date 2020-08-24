import 'package:flutter_challenge_senior/api/graphql/api.dart';
import 'package:flutter_challenge_senior/api/graphql/generated/repo_list.api.dart';
import 'package:flutter_challenge_senior/service_locator.dart';

class GraphQLRepository {
  GraphQLApi _api = sl.get<GraphQLApi>();

  Future<RepoList$Query> getRepoList({int first: 100}) async {
    // TODO: currently not pagination supported here
    final result = await _api.getReposForViewer(first: first);
    // check for exception
    if (result.hasException) {
      // check for graphQL errors
      if (result?.exception?.graphqlErrors != null &&
          result.exception.graphqlErrors.length > 0) {
        print(result.exception.graphqlErrors);
      }
      // check for client errors and throw if error
      if (result?.exception?.clientException != null) {
        print(result.exception.clientException);
        throw result.exception.clientException;
      }
    }
    // initialize class from JSON
    return RepoList$Query.fromJson(result.data);
  }
}
