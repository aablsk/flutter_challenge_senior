import 'package:flutter_challenge_senior/api/graphql/generated/repo_issues.api.dart';
import 'package:flutter_challenge_senior/data/graphql_repository.dart';
import 'package:flutter_challenge_senior/service_locator.dart';
import 'package:flutter_challenge_senior/state/list_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class IssueListModel extends ListModel {
  // TODO: should probably decouple GraphQL classes from app logic
  final _gqlRepo = sl.get<GraphQLRepository>();
  final String repoName;
  RepoIssues$Query$User$Repository$IssueConnection _result;
  bool _isLoading = false;
  String _errorMessage;

  UnmodifiableListView<RepoIssues$Query$User$Repository$IssueConnection$Issue>
      get issues => UnmodifiableListView(_result?.nodes);

  int get totalCount => _result.totalCount;
  int get closedCount => _result.nodes.fold(
      0,
      (previousValue, element) =>
          element.closed ? previousValue + 1 : previousValue);
  int get openCount => _result.nodes.fold(
      0,
      (previousValue, element) =>
          !element.closed ? previousValue + 1 : previousValue);
  bool get isLoading => _isLoading;
  bool get hasError => _errorMessage != null;
  bool get hasData => _result != null && issues.length > 0;
  String get errorMessage => _errorMessage;

  IssueListModel({this.repoName}) {
    updateData();
  }

  void beforeRequest() {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();
  }

  void afterRequest() {
    _isLoading = false;
    notifyListeners();
  }

  Future<void> updateData() async {
    beforeRequest();

    try {
      final result = (await _gqlRepo.getIssuesByRepoName(repoName: repoName))
          .viewer
          .repository
          .issues;
      this._result = result;
    } catch (e) {
      _errorMessage = e.toString();
    }

    afterRequest();
    return;
  }
}
