import 'package:flutter_challenge_senior/data/graphql_repository.dart';
import 'package:flutter_challenge_senior/data/model/repository.dart';
import 'package:flutter_challenge_senior/data/model/viewer_repos_result.dart';
import 'package:flutter_challenge_senior/service_locator.dart';
import 'package:flutter_challenge_senior/state/list_view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class RepoListViewModel extends ListViewModel {
  final _gqlRepo = sl.get<GraphQLRepository>();
  ViewerReposResultData _result;
  bool _isLoading = false;
  String _errorMessage;

  UnmodifiableListView<Repository> get items =>
      UnmodifiableListView(_result.repos);

  int get totalCount => _result.repoCount;
  bool get isLoading => _isLoading;
  bool get hasError => _errorMessage != null;
  bool get hasData => _result != null && items.length > 0;
  String get errorMessage => _errorMessage;

  RepoListViewModel() {
    updateData();
  }

  void _processDataEvent(ViewerReposResultData value) {
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
    final cleanStream = _gqlRepo.getRepoList().handleError((err) {
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
