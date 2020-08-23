// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetLogin$Query$User _$GetLogin$Query$UserFromJson(Map<String, dynamic> json) {
  return GetLogin$Query$User()..login = json['login'] as String;
}

Map<String, dynamic> _$GetLogin$Query$UserToJson(
        GetLogin$Query$User instance) =>
    <String, dynamic>{
      'login': instance.login,
    };

GetLogin$Query _$GetLogin$QueryFromJson(Map<String, dynamic> json) {
  return GetLogin$Query()
    ..viewer = json['viewer'] == null
        ? null
        : GetLogin$Query$User.fromJson(json['viewer'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetLogin$QueryToJson(GetLogin$Query instance) =>
    <String, dynamic>{
      'viewer': instance.viewer?.toJson(),
    };
