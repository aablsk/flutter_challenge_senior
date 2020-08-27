import 'package:flutter/foundation.dart';
import 'package:flutter_challenge_senior/data_provider/graphql/api.dart';
import 'package:flutter_challenge_senior/data/model/issue.dart';
import 'package:flutter_challenge_senior/data/model/repo_issues_result.dart';
import 'package:flutter_challenge_senior/data/model/repository.dart';
import 'package:flutter_challenge_senior/data/model/viewer_repos_result.dart';
import 'package:flutter_challenge_senior/service_locator.dart';

/**
 * This class is used to consume GraphQLApi and transform results into streams
 * of immutable data classes, it may only be used by business logic models
 */
class GraphQLRepository {
  GraphQLApi _api = sl.get<GraphQLApi>();

  Stream<ViewerReposResult> getRepoList({int first: 100}) async* {
    try {
      yield ViewerReposResult.loading();
      // TODO: currently no pagination supported here
      final result = await _api.getReposForViewer(first: first);

      if (result.hasException) {
        if (result?.exception?.graphqlErrors != null &&
            result.exception.graphqlErrors.length > 0) {
          yield ViewerReposResult.error(
            result.exception.graphqlErrors.first.message,
          );
          return;
        }

        if (result?.exception?.clientException != null) {
          yield ViewerReposResult.error(
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
        yield ViewerReposResult.data(
            repositories, repositoriesMap['totalCount']);
      }
    } catch (e) {
      yield ViewerReposResult.error(e.toString());
      return;
    }
  }

  Stream<RepoIssuesResult> getRepoIssues({@required String repoName}) async* {
    try {
      yield RepoIssuesResult.loading();
      // TODO: currently no pagination supported here
      final result = await _api.getIssuesByRepoName(repoName: repoName);

      if (result.hasException) {
        if (result?.exception?.graphqlErrors != null &&
            result.exception.graphqlErrors.length > 0) {
          yield RepoIssuesResult.error(
            result.exception.graphqlErrors.first.message,
          );
          return;
        }

        if (result?.exception?.clientException != null) {
          yield RepoIssuesResult.error(
            result.exception.clientException.message,
          );
          return;
        }
      }

      if (result.data != null) {
        final issuesMap = result.data['viewer']['repository']['issues'];
        final issues = (issuesMap['nodes'] as List<dynamic>)
            .map((issue) => Issue.fromGqlResult(issue))
            .toList();
        yield RepoIssuesResult.data(issues, issuesMap['totalCount']);
      }
    } catch (e) {
      yield RepoIssuesResult.error(e.toString());
      return;
    }
  }
}
