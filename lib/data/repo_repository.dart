import 'package:flutter_challenge_senior/constants.dart';
import 'package:flutter_challenge_senior/graphql/repos.dart';
import 'package:flutter_challenge_senior/graphql/user.dart';
import 'package:graphql/client.dart';

class GqlRepository {
  GraphQLClient _client;

  Future<GqlRepository> init(String accessToken) async {
    final httpLink = HttpLink(
      uri: GITHUB_GRAPHQL_API_URL,
    ); // TODO: look into websocket links
    final authLink = AuthLink(getToken: () => "bearer $accessToken");
    final link = authLink.concat(httpLink);
    this._client = GraphQLClient(
      link: link,
      cache: OptimisticCache(dataIdFromObject: _typenameDataIdFromObject),
    );
    return this;
  }

  String _typenameDataIdFromObject(Object object) {
    if (object is Map<String, Object> &&
        object.containsKey('__typename') &&
        object.containsKey('id')) {
      return "${object['__typename']}/${object['id']}";
    }
    return null;
  }

  void getReposForUser(String login) async {
    final options =
        QueryOptions(documentNode: ListReposQuery().document, variables: {
      'login': login,
    });

    final result = await this._client.query(options);

    if (result.hasException) {
      print('Error' + result.exception.toString());
    }
    // print(result?.data?.user?.keys);
    result?.data['user']['repositories']['nodes'].forEach((repo) => print(
        ListRepos$Query$User$RepositoryConnection$Repository.fromJson(repo)
            .toJson()));

    print(result);
  }

  Future<String> getLogin() async {
    final options = QueryOptions(
      documentNode: GetLoginQuery().document,
    );
    final result = await this._client.query(options);
  }
}
