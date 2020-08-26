import 'package:flutter_challenge_senior/api/graphql/generated/repo_list.api.dart';
import 'package:flutter_challenge_senior/data/graphql_repository.dart';
import 'package:flutter_challenge_senior/data/model/repo_list.dart';
import 'package:flutter_challenge_senior/service_locator.dart';
import 'package:flutter_challenge_senior/state/list_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class RepoListModel extends ListModel {
  // TODO: should probably decouple GraphQL classes from app logic
  final _gqlRepo = sl.get<GraphQLRepository>();
  Data _result;
  bool _isLoading = false;
  String _errorMessage;

  UnmodifiableListView<Repository> get items =>
      UnmodifiableListView(_result.repos);

  int get totalCount => _result.repoCount;
  bool get isLoading => _isLoading;
  bool get hasError => _errorMessage != null;
  bool get hasData => _result != null && items.length > 0;
  String get errorMessage => _errorMessage;

  RepoListModel() {
    updateData();
  }

  void _processDataEvent(Data value) {
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
    // handle runtime errors of stream
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
