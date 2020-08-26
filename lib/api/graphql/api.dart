import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/api/graphql/query/get_repo_issues.dart';
import 'package:flutter_challenge_senior/api/graphql/query/get_viewer_repos.dart';
import 'package:flutter_challenge_senior/constants.dart';
import 'package:graphql/client.dart';

/**
 * This class is used for querying with GraphQL API
 */
class GraphQLApi {
  GraphQLClient _client;

  GraphQLApi init(String accessToken) {
    final httpLink = HttpLink(
      uri: GITHUB_GRAPHQL_API_URL,
    );
    final authLink = AuthLink(getToken: () => "bearer $accessToken");
    final link = authLink.concat(httpLink);

    String _typenameDataIdFromObject(Object object) {
      if (object is Map<String, Object> &&
          object.containsKey('__typename') &&
          object.containsKey('id')) {
        return "${object['__typename']}/${object['id']}";
      }
      return null;
    }

    this._client = GraphQLClient(
      link: link,
      cache: OptimisticCache(dataIdFromObject: _typenameDataIdFromObject),
    );
    return this;
  }

  Future<QueryResult> getReposForViewer({int first, int after}) async {
    final Map<String, dynamic> variables = {};
    if (first != null) variables['first'] = first;
    if (after != null) variables['after'] = after;

    final options = QueryOptions(
      documentNode: gql(getViewerRepos),
      variables: variables,
      fetchPolicy: FetchPolicy.cacheAndNetwork,
    );

    return this._client.query(options);
  }

  Future<QueryResult> getIssuesByRepoName({@required String repoName}) async {
    final Map<String, dynamic> variables = {
      'repoName': repoName,
    };

    final options = QueryOptions(
      documentNode: gql(getRepoIssues),
      variables: variables,
      fetchPolicy: FetchPolicy.cacheAndNetwork,
    );

    return this._client.query(options);
  }
}
