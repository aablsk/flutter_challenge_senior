import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql/client.dart';

part 'repo_list.freezed.dart';

@freezed
abstract class ListRepoResult with _$ListRepoResult {
  const factory ListRepoResult.data(List<Repository> repos, int repoCount) =
      Data;
  const factory ListRepoResult.loading() = Loading;
  const factory ListRepoResult.error(String message) = ErrorDetails;
}

@freezed
abstract class Repository with _$Repository {
  const factory Repository({
    @required String name,
    String description,
    List<Issue> issues,
    @required int issueCount,
    String cursor,
    String id,
  }) = _Repository;

  static Repository fromGqlResult(dynamic repo) {
    final issues = repo['issues']['nodes'] as List<dynamic>;
    return Repository(
      id: repo['id'],
      name: repo['name'],
      issueCount: issues.length,
      description: repo['description'],
      issues: issues.map(Issue.fromGqlResult).toList(),
    );
  }
}

@freezed
abstract class Issue with _$Issue {
  const factory Issue({
    @required String title,
    @required bool closed,
    String id,
    String cursor,
    List<User> assignees,
  }) = _Issue;

  static Issue fromGqlResult(dynamic issue) {
    final assignees = issue['assignees']['nodes'] as List<dynamic>;
    return Issue(
      title: issue['title'],
      closed: issue['closed'],
      id: issue['id'],
      assignees: assignees.map(User.fromGqlResult).toList(),
    );
  }
}

@freezed
abstract class User with _$User {
  const factory User({
    @required String login,
    @required String avatarUrl,
    String id,
    String cursor,
  }) = _User;

  static User fromGqlResult(dynamic user) {
    return User(
      login: user['login'],
      avatarUrl: user['avatarUrl'],
    );
  }
}
