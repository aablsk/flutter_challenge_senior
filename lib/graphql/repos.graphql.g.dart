// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListRepos$Query$User$RepositoryConnection$Repository
    _$ListRepos$Query$User$RepositoryConnection$RepositoryFromJson(
        Map<String, dynamic> json) {
  return ListRepos$Query$User$RepositoryConnection$Repository()
    ..hasIssuesEnabled = json['hasIssuesEnabled'] as bool
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$ListRepos$Query$User$RepositoryConnection$RepositoryToJson(
            ListRepos$Query$User$RepositoryConnection$Repository instance) =>
        <String, dynamic>{
          'hasIssuesEnabled': instance.hasIssuesEnabled,
          'name': instance.name,
        };

ListRepos$Query$User$RepositoryConnection
    _$ListRepos$Query$User$RepositoryConnectionFromJson(
        Map<String, dynamic> json) {
  return ListRepos$Query$User$RepositoryConnection()
    ..nodes = (json['nodes'] as List)
        ?.map((e) => e == null
            ? null
            : ListRepos$Query$User$RepositoryConnection$Repository.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ListRepos$Query$User$RepositoryConnectionToJson(
        ListRepos$Query$User$RepositoryConnection instance) =>
    <String, dynamic>{
      'nodes': instance.nodes?.map((e) => e?.toJson())?.toList(),
    };

ListRepos$Query$User _$ListRepos$Query$UserFromJson(Map<String, dynamic> json) {
  return ListRepos$Query$User()
    ..repositories = json['repositories'] == null
        ? null
        : ListRepos$Query$User$RepositoryConnection.fromJson(
            json['repositories'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ListRepos$Query$UserToJson(
        ListRepos$Query$User instance) =>
    <String, dynamic>{
      'repositories': instance.repositories?.toJson(),
    };

ListRepos$Query _$ListRepos$QueryFromJson(Map<String, dynamic> json) {
  return ListRepos$Query()
    ..user = json['user'] == null
        ? null
        : ListRepos$Query$User.fromJson(json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ListRepos$QueryToJson(ListRepos$Query instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
    };

ListReposArguments _$ListReposArgumentsFromJson(Map<String, dynamic> json) {
  return ListReposArguments(
    login: json['login'] as String,
  );
}

Map<String, dynamic> _$ListReposArgumentsToJson(ListReposArguments instance) =>
    <String, dynamic>{
      'login': instance.login,
    };
