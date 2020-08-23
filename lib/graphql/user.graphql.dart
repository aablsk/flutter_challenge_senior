// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'user.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class GetLogin$Query$User with EquatableMixin {
  GetLogin$Query$User();

  factory GetLogin$Query$User.fromJson(Map<String, dynamic> json) =>
      _$GetLogin$Query$UserFromJson(json);

  String login;

  @override
  List<Object> get props => [login];
  Map<String, dynamic> toJson() => _$GetLogin$Query$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetLogin$Query with EquatableMixin {
  GetLogin$Query();

  factory GetLogin$Query.fromJson(Map<String, dynamic> json) =>
      _$GetLogin$QueryFromJson(json);

  GetLogin$Query$User viewer;

  @override
  List<Object> get props => [viewer];
  Map<String, dynamic> toJson() => _$GetLogin$QueryToJson(this);
}

class GetLoginQuery extends GraphQLQuery<GetLogin$Query, JsonSerializable> {
  GetLoginQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'get_login'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'viewer'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'login'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'get_login';

  @override
  List<Object> get props => [document, operationName];
  @override
  GetLogin$Query parse(Map<String, dynamic> json) =>
      GetLogin$Query.fromJson(json);
}
