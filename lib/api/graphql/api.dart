import 'package:flutter_challenge_senior/api/graphql/generated/user.api.dart';
import 'package:flutter_challenge_senior/api/graphql/generated/repo_list.api.dart';
import 'package:flutter_challenge_senior/constants.dart';
import 'package:graphql/client.dart';

class GraphQLApi {
  GraphQLClient _client;

  Future<GraphQLApi> init(String accessToken) async {
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
      documentNode: RepoListQuery().document,
      variables: variables,
      fetchPolicy: FetchPolicy.cacheAndNetwork,
    );

    return this._client.query(options);
  }

  Future<QueryResult> getLogin() async {
    final options = QueryOptions(
      documentNode: GetLoginQuery().document,
    );
    return this._client.query(options);
  }
}
