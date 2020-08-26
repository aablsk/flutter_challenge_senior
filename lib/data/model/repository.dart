import 'package:flutter_challenge_senior/data/model/issue.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';

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
      issueCount: repo['issues']['totalCount'],
      description: repo['description'],
      issues: issues.map(Issue.fromGqlResult).toList(),
    );
  }
}
