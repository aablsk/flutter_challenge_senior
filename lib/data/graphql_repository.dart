import 'package:flutter/foundation.dart';
import 'package:flutter_challenge_senior/api/graphql/api.dart';
import 'package:flutter_challenge_senior/api/graphql/generated/repo_issues.api.graphql.dart';
import 'package:flutter_challenge_senior/data/model/repo_list.dart';
import 'package:flutter_challenge_senior/service_locator.dart';

class GraphQLRepository {
  GraphQLApi _api = sl.get<GraphQLApi>();

  Stream<ListRepoResult> getRepoList({int first: 100}) async* {
    yield ListRepoResult.loading();
    // TODO: currently not pagination supported here
    final result = await _api.getReposForViewer(first: first);

    // check for exception
    if (result.hasException) {
      // check for graphQL errors and yield
      if (result?.exception?.graphqlErrors != null &&
          result.exception.graphqlErrors.length > 0) {
        yield ListRepoResult.error(
          result.exception.graphqlErrors.first.message,
        );
        return;
      }
      // check for client errors and yield
      if (result?.exception?.clientException != null) {
        yield ListRepoResult.error(
          result.exception.clientException.message,
        );
        return;
      }
    }
    if (result.data != null) {
      final repositoriesMap = result.data['viewer']['repositories'];
      final repositories = (repositoriesMap['nodes'] as List<dynamic>)
          .map(
            (repo) => Repository.fromGqlResult(repo),
          )
          .toList();
      yield ListRepoResult.data(repositories, repositoriesMap['totalCount']);
    }
  }

  Future<RepoIssues$Query> getIssuesByRepoName(
      {@required String repoName}) async {
    // TODO: currently not pagination supported here
    final result = await _api.getIssuesByRepoName(repoName: repoName);

    // TODO: convert to union type?
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
    return RepoIssues$Query.fromJson(result.data);
  }
}
