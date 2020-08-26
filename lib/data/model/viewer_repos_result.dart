import 'package:flutter_challenge_senior/data/model/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'viewer_repos_result.freezed.dart';

@freezed
abstract class ViewerReposResult with _$ViewerReposResult {
  const factory ViewerReposResult.data(List<Repository> repos, int repoCount) =
      ViewerReposResultData;
  const factory ViewerReposResult.loading() = ViewerReposResultLoading;
  const factory ViewerReposResult.error(String message) =
      ViewerReposResultError;
}
