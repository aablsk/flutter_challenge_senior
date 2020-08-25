// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_issues.api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection$User
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection$UserFromJson(
        Map<String, dynamic> json) {
  return RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection$User()
    ..avatarUrl = json['avatarUrl']
    ..login = json['login'] as String;
}

Map<String, dynamic>
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection$UserToJson(
            RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection$User
                instance) =>
        <String, dynamic>{
          'avatarUrl': instance.avatarUrl,
          'login': instance.login,
        };

RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnectionFromJson(
        Map<String, dynamic> json) {
  return RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection()
    ..nodes = (json['nodes'] as List)
        ?.map((e) => e == null
            ? null
            : RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection$User
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic>
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnectionToJson(
            RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection
                instance) =>
        <String, dynamic>{
          'nodes': instance.nodes?.map((e) => e?.toJson())?.toList(),
        };

RepoIssues$Query$User$Repository$IssueConnection$Issue$Actor
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$ActorFromJson(
        Map<String, dynamic> json) {
  return RepoIssues$Query$User$Repository$IssueConnection$Issue$Actor()
    ..login = json['login'] as String
    ..avatarUrl = json['avatarUrl']
    ..typeName = json['__typename'] as String;
}

Map<String, dynamic>
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$ActorToJson(
            RepoIssues$Query$User$Repository$IssueConnection$Issue$Actor
                instance) =>
        <String, dynamic>{
          'login': instance.login,
          'avatarUrl': instance.avatarUrl,
          '__typename': instance.typeName,
        };

RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment$Actor
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment$ActorFromJson(
        Map<String, dynamic> json) {
  return RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment$Actor()
    ..login = json['login'] as String
    ..avatarUrl = json['avatarUrl']
    ..typeName = json['__typename'] as String;
}

Map<String, dynamic>
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment$ActorToJson(
            RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment$Actor
                instance) =>
        <String, dynamic>{
          'login': instance.login,
          'avatarUrl': instance.avatarUrl,
          '__typename': instance.typeName,
        };

RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueCommentFromJson(
        Map<String, dynamic> json) {
  return RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment()
    ..author = json['author'] == null
        ? null
        : RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment$Actor
            .fromJson(json['author'] as Map<String, dynamic>)
    ..bodyText = json['bodyText'] as String;
}

Map<String, dynamic>
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueCommentToJson(
            RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment
                instance) =>
        <String, dynamic>{
          'author': instance.author?.toJson(),
          'bodyText': instance.bodyText,
        };

RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnectionFromJson(
        Map<String, dynamic> json) {
  return RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection()
    ..nodes = (json['nodes'] as List)
        ?.map((e) => e == null
            ? null
            : RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment
                .fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..totalCount = json['totalCount'] as int;
}

Map<String, dynamic>
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnectionToJson(
            RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection
                instance) =>
        <String, dynamic>{
          'nodes': instance.nodes?.map((e) => e?.toJson())?.toList(),
          'totalCount': instance.totalCount,
        };

RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection$Label
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection$LabelFromJson(
        Map<String, dynamic> json) {
  return RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection$Label()
    ..name = json['name'] as String;
}

Map<String, dynamic>
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection$LabelToJson(
            RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection$Label
                instance) =>
        <String, dynamic>{
          'name': instance.name,
        };

RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnectionFromJson(
        Map<String, dynamic> json) {
  return RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection()
    ..nodes = (json['nodes'] as List)
        ?.map((e) => e == null
            ? null
            : RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection$Label
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic>
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnectionToJson(
            RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection
                instance) =>
        <String, dynamic>{
          'nodes': instance.nodes?.map((e) => e?.toJson())?.toList(),
        };

RepoIssues$Query$User$Repository$IssueConnection$Issue$Milestone
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$MilestoneFromJson(
        Map<String, dynamic> json) {
  return RepoIssues$Query$User$Repository$IssueConnection$Issue$Milestone()
    ..title = json['title'] as String;
}

Map<String, dynamic>
    _$RepoIssues$Query$User$Repository$IssueConnection$Issue$MilestoneToJson(
            RepoIssues$Query$User$Repository$IssueConnection$Issue$Milestone
                instance) =>
        <String, dynamic>{
          'title': instance.title,
        };

RepoIssues$Query$User$Repository$IssueConnection$Issue
    _$RepoIssues$Query$User$Repository$IssueConnection$IssueFromJson(
        Map<String, dynamic> json) {
  return RepoIssues$Query$User$Repository$IssueConnection$Issue()
    ..id = json['id'] as String
    ..bodyText = json['bodyText'] as String
    ..assignees = json['assignees'] == null
        ? null
        : RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection.fromJson(
            json['assignees'] as Map<String, dynamic>)
    ..author = json['author'] == null
        ? null
        : RepoIssues$Query$User$Repository$IssueConnection$Issue$Actor.fromJson(
            json['author'] as Map<String, dynamic>)
    ..closed = json['closed'] as bool
    ..comments = json['comments'] == null
        ? null
        : RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection.fromJson(
            json['comments'] as Map<String, dynamic>)
    ..labels = json['labels'] == null
        ? null
        : RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection
            .fromJson(json['labels'] as Map<String, dynamic>)
    ..milestone = json['milestone'] == null
        ? null
        : RepoIssues$Query$User$Repository$IssueConnection$Issue$Milestone.fromJson(
            json['milestone'] as Map<String, dynamic>)
    ..title = json['title'] as String
    ..updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt'] as String);
}

Map<String, dynamic>
    _$RepoIssues$Query$User$Repository$IssueConnection$IssueToJson(
            RepoIssues$Query$User$Repository$IssueConnection$Issue instance) =>
        <String, dynamic>{
          'id': instance.id,
          'bodyText': instance.bodyText,
          'assignees': instance.assignees?.toJson(),
          'author': instance.author?.toJson(),
          'closed': instance.closed,
          'comments': instance.comments?.toJson(),
          'labels': instance.labels?.toJson(),
          'milestone': instance.milestone?.toJson(),
          'title': instance.title,
          'updatedAt': instance.updatedAt?.toIso8601String(),
        };

RepoIssues$Query$User$Repository$IssueConnection$IssueEdge
    _$RepoIssues$Query$User$Repository$IssueConnection$IssueEdgeFromJson(
        Map<String, dynamic> json) {
  return RepoIssues$Query$User$Repository$IssueConnection$IssueEdge()
    ..cursor = json['cursor'] as String;
}

Map<String,
    dynamic> _$RepoIssues$Query$User$Repository$IssueConnection$IssueEdgeToJson(
        RepoIssues$Query$User$Repository$IssueConnection$IssueEdge instance) =>
    <String, dynamic>{
      'cursor': instance.cursor,
    };

RepoIssues$Query$User$Repository$IssueConnection
    _$RepoIssues$Query$User$Repository$IssueConnectionFromJson(
        Map<String, dynamic> json) {
  return RepoIssues$Query$User$Repository$IssueConnection()
    ..totalCount = json['totalCount'] as int
    ..nodes = (json['nodes'] as List)
        ?.map((e) => e == null
            ? null
            : RepoIssues$Query$User$Repository$IssueConnection$Issue.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..edges = (json['edges'] as List)
        ?.map((e) => e == null
            ? null
            : RepoIssues$Query$User$Repository$IssueConnection$IssueEdge
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$RepoIssues$Query$User$Repository$IssueConnectionToJson(
        RepoIssues$Query$User$Repository$IssueConnection instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'nodes': instance.nodes?.map((e) => e?.toJson())?.toList(),
      'edges': instance.edges?.map((e) => e?.toJson())?.toList(),
    };

RepoIssues$Query$User$Repository _$RepoIssues$Query$User$RepositoryFromJson(
    Map<String, dynamic> json) {
  return RepoIssues$Query$User$Repository()
    ..issues = json['issues'] == null
        ? null
        : RepoIssues$Query$User$Repository$IssueConnection.fromJson(
            json['issues'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RepoIssues$Query$User$RepositoryToJson(
        RepoIssues$Query$User$Repository instance) =>
    <String, dynamic>{
      'issues': instance.issues?.toJson(),
    };

RepoIssues$Query$User _$RepoIssues$Query$UserFromJson(
    Map<String, dynamic> json) {
  return RepoIssues$Query$User()
    ..repository = json['repository'] == null
        ? null
        : RepoIssues$Query$User$Repository.fromJson(
            json['repository'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RepoIssues$Query$UserToJson(
        RepoIssues$Query$User instance) =>
    <String, dynamic>{
      'repository': instance.repository?.toJson(),
    };

RepoIssues$Query _$RepoIssues$QueryFromJson(Map<String, dynamic> json) {
  return RepoIssues$Query()
    ..viewer = json['viewer'] == null
        ? null
        : RepoIssues$Query$User.fromJson(
            json['viewer'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RepoIssues$QueryToJson(RepoIssues$Query instance) =>
    <String, dynamic>{
      'viewer': instance.viewer?.toJson(),
    };

RepoIssuesArguments _$RepoIssuesArgumentsFromJson(Map<String, dynamic> json) {
  return RepoIssuesArguments(
    repoName: json['repoName'] as String,
  );
}

Map<String, dynamic> _$RepoIssuesArgumentsToJson(
        RepoIssuesArguments instance) =>
    <String, dynamic>{
      'repoName': instance.repoName,
    };
