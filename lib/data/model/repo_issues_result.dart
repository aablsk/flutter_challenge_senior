import 'package:flutter_challenge_senior/data/model/issue.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_issues_result.freezed.dart';

@freezed
abstract class RepoIssuesResult with _$RepoIssuesResult {
  const factory RepoIssuesResult.data(List<Issue> issues, int totalCount) =
      RepoIssuesResultData;
  const factory RepoIssuesResult.loading() = RepoIssuesResultLoading;
  const factory RepoIssuesResult.error(String message) = RepoIssuesResultError;
}
