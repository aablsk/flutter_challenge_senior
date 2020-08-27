import 'package:flutter_challenge_senior/data/graphql_repository.dart';
import 'package:flutter_challenge_senior/data/model/issue.dart';
import 'package:flutter_challenge_senior/data/model/repo_issues_result.dart';
import 'package:flutter_challenge_senior/service_locator.dart';
import 'package:flutter_challenge_senior/state/shared/list_view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class IssueListViewModel extends ListViewModel {
  final _gqlRepo = sl.get<GraphQLRepository>();
  final String repoName;
  RepoIssuesResultData _result;
  bool _isLoading = false;
  String _errorMessage;

  UnmodifiableListView<Issue> get issues =>
      UnmodifiableListView(_result?.issues);

  int get totalCount => _result.totalCount;
  int get closedCount => issues.fold(
      0,
      (previousValue, element) =>
          element.closed ? previousValue + 1 : previousValue);
  int get openCount => issues.fold(
      0,
      (previousValue, element) =>
          !element.closed ? previousValue + 1 : previousValue);
  bool get isLoading => _isLoading;
  bool get hasError => _errorMessage != null;
  bool get hasData => _result != null && issues.length > 0;
  String get errorMessage => _errorMessage;

  IssueListViewModel({this.repoName}) {
    updateData();
  }

  void _processDataEvent(RepoIssuesResultData value) {
    _result = value;
    _isLoading = false;
    notifyListeners();
  }

  void _processLoadingEvent() {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();
  }

  void _processErrorEvent(String errorMessage) {
    _isLoading = false;
    _errorMessage = errorMessage;
    notifyListeners();
  }

  Future<void> updateData() async {
    // handle possible runtime errors of stream
    final cleanStream =
        _gqlRepo.getRepoIssues(repoName: repoName).handleError((err) {
      _errorMessage = err.toString();
    });
    // handle stream events
    await for (var result in cleanStream) {
      result.map(
        data: (value) => _processDataEvent(value),
        loading: (_) => _processLoadingEvent(),
        error: (value) => _processErrorEvent(value.message),
      );
    }
  }
}
