import 'package:flutter/foundation.dart';
import 'package:flutter_challenge_senior/data/graphql_repository.dart';
import 'package:flutter_challenge_senior/service_locator.dart';

class RepoListModel extends ChangeNotifier {
  final _gqlRepo = sl.get<GraphQLRepository>();
  //final List<Repository> =

  void init() async {
    final result = await _gqlRepo.getRepoList();
  }
}
