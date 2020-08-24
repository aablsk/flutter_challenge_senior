import 'package:flutter/foundation.dart';
import 'package:flutter_challenge_senior/api/graphql/generated/repo_list.api.dart';
import 'package:flutter_challenge_senior/data/graphql_repository.dart';
import 'package:flutter_challenge_senior/service_locator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class RepoListModel extends ChangeNotifier {
  // TODO: should probably decouple GraphQL classes from app logic
  final _gqlRepo = sl.get<GraphQLRepository>();
  RepoList$Query$User$RepositoryConnection _result;
  bool _isLoading = false;
  bool _hasError = false;
  String _errorMessage = null;

  UnmodifiableListView<RepoList$Query$User$RepositoryConnection$Repository>
      get repos => UnmodifiableListView(_result?.nodes);

  int get totalCount => _result.totalCount;
  bool get isLoading => _isLoading;
  bool get hasError => _hasError;
  bool get hasData => _result != null && !hasError;
  String get errorMessage => _errorMessage;

  RepoListModel() {
    updateData();
  }

  void beforeRequest() {
    _isLoading = true;
    _hasError = false;
    _errorMessage = null;
    _result = null;
    notifyListeners();
  }

  void afterRequest() {
    _isLoading = false;
    notifyListeners();
  }

  Future<void> updateData() async {
    beforeRequest();

    try {
      this._result = (await _gqlRepo.getRepoList()).viewer.repositories;
    } catch (e) {
      _hasError = true;
      _errorMessage = e.toString();
    }
    afterRequest();
    return;
  }
}
