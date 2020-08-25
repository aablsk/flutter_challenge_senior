// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_list.api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepoList$Query$User$RepositoryConnection$RepositoryEdge
    _$RepoList$Query$User$RepositoryConnection$RepositoryEdgeFromJson(
        Map<String, dynamic> json) {
  return RepoList$Query$User$RepositoryConnection$RepositoryEdge()
    ..cursor = json['cursor'] as String;
}

Map<String, dynamic>
    _$RepoList$Query$User$RepositoryConnection$RepositoryEdgeToJson(
            RepoList$Query$User$RepositoryConnection$RepositoryEdge instance) =>
        <String, dynamic>{
          'cursor': instance.cursor,
        };

RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection$User
    _$RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection$UserFromJson(
        Map<String, dynamic> json) {
  return RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection$User()
    ..avatarUrl = json['avatarUrl']
    ..id = json['id'] as String;
}

Map<String, dynamic>
    _$RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection$UserToJson(
            RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection$User
                instance) =>
        <String, dynamic>{
          'avatarUrl': instance.avatarUrl,
          'id': instance.id,
        };

RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection
    _$RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnectionFromJson(
        Map<String, dynamic> json) {
  return RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection()
    ..nodes = (json['nodes'] as List)
        ?.map((e) => e == null
            ? null
            : RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection$User
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic>
    _$RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnectionToJson(
            RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection
                instance) =>
        <String, dynamic>{
          'nodes': instance.nodes?.map((e) => e?.toJson())?.toList(),
        };

RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue
    _$RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$IssueFromJson(
        Map<String, dynamic> json) {
  return RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue()
    ..title = json['title'] as String
    ..closed = json['closed'] as bool
    ..id = json['id'] as String
    ..assignees = json['assignees'] == null
        ? null
        : RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection
            .fromJson(json['assignees'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$IssueToJson(
            RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue
                instance) =>
        <String, dynamic>{
          'title': instance.title,
          'closed': instance.closed,
          'id': instance.id,
          'assignees': instance.assignees?.toJson(),
        };

RepoList$Query$User$RepositoryConnection$Repository$IssueConnection
    _$RepoList$Query$User$RepositoryConnection$Repository$IssueConnectionFromJson(
        Map<String, dynamic> json) {
  return RepoList$Query$User$RepositoryConnection$Repository$IssueConnection()
    ..totalCount = json['totalCount'] as int
    ..nodes = (json['nodes'] as List)
        ?.map((e) => e == null
            ? null
            : RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic>
    _$RepoList$Query$User$RepositoryConnection$Repository$IssueConnectionToJson(
            RepoList$Query$User$RepositoryConnection$Repository$IssueConnection
                instance) =>
        <String, dynamic>{
          'totalCount': instance.totalCount,
          'nodes': instance.nodes?.map((e) => e?.toJson())?.toList(),
        };

RepoList$Query$User$RepositoryConnection$Repository
    _$RepoList$Query$User$RepositoryConnection$RepositoryFromJson(
        Map<String, dynamic> json) {
  return RepoList$Query$User$RepositoryConnection$Repository()
    ..name = json['name'] as String
    ..id = json['id'] as String
    ..description = json['description'] as String
    ..issues = json['issues'] == null
        ? null
        : RepoList$Query$User$RepositoryConnection$Repository$IssueConnection
            .fromJson(json['issues'] as Map<String, dynamic>);
}

Map<String, dynamic>
    _$RepoList$Query$User$RepositoryConnection$RepositoryToJson(
            RepoList$Query$User$RepositoryConnection$Repository instance) =>
        <String, dynamic>{
          'name': instance.name,
          'id': instance.id,
          'description': instance.description,
          'issues': instance.issues?.toJson(),
        };

RepoList$Query$User$RepositoryConnection
    _$RepoList$Query$User$RepositoryConnectionFromJson(
        Map<String, dynamic> json) {
  return RepoList$Query$User$RepositoryConnection()
    ..totalCount = json['totalCount'] as int
    ..edges = (json['edges'] as List)
        ?.map((e) => e == null
            ? null
            : RepoList$Query$User$RepositoryConnection$RepositoryEdge.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..nodes = (json['nodes'] as List)
        ?.map((e) => e == null
            ? null
            : RepoList$Query$User$RepositoryConnection$Repository.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$RepoList$Query$User$RepositoryConnectionToJson(
        RepoList$Query$User$RepositoryConnection instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'edges': instance.edges?.map((e) => e?.toJson())?.toList(),
      'nodes': instance.nodes?.map((e) => e?.toJson())?.toList(),
    };

RepoList$Query$User _$RepoList$Query$UserFromJson(Map<String, dynamic> json) {
  return RepoList$Query$User()
    ..repositories = json['repositories'] == null
        ? null
        : RepoList$Query$User$RepositoryConnection.fromJson(
            json['repositories'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RepoList$Query$UserToJson(
        RepoList$Query$User instance) =>
    <String, dynamic>{
      'repositories': instance.repositories?.toJson(),
    };

RepoList$Query _$RepoList$QueryFromJson(Map<String, dynamic> json) {
  return RepoList$Query()
    ..viewer = json['viewer'] == null
        ? null
        : RepoList$Query$User.fromJson(json['viewer'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RepoList$QueryToJson(RepoList$Query instance) =>
    <String, dynamic>{
      'viewer': instance.viewer?.toJson(),
    };

RepoListArguments _$RepoListArgumentsFromJson(Map<String, dynamic> json) {
  return RepoListArguments(
    first: json['first'] as int,
  );
}

Map<String, dynamic> _$RepoListArgumentsToJson(RepoListArguments instance) =>
    <String, dynamic>{
      'first': instance.first,
    };
