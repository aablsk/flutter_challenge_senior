// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'repo_list.api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class RepoList$Query$User$RepositoryConnection$RepositoryEdge
    with EquatableMixin {
  RepoList$Query$User$RepositoryConnection$RepositoryEdge();

  factory RepoList$Query$User$RepositoryConnection$RepositoryEdge.fromJson(
          Map<String, dynamic> json) =>
      _$RepoList$Query$User$RepositoryConnection$RepositoryEdgeFromJson(json);

  String cursor;

  @override
  List<Object> get props => [cursor];
  Map<String, dynamic> toJson() =>
      _$RepoList$Query$User$RepositoryConnection$RepositoryEdgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection$User
    with EquatableMixin {
  RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection$User();

  factory RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection$User.fromJson(
          Map<String, dynamic> json) =>
      _$RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection$UserFromJson(
          json);

  String avatarUrl;

  String id;

  @override
  List<Object> get props => [avatarUrl, id];
  Map<String, dynamic> toJson() =>
      _$RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection$UserToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection
    with EquatableMixin {
  RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection();

  factory RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection.fromJson(
          Map<String, dynamic> json) =>
      _$RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnectionFromJson(
          json);

  List<RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection$User>
      nodes;

  @override
  List<Object> get props => [nodes];
  Map<String, dynamic> toJson() =>
      _$RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnectionToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue
    with EquatableMixin {
  RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue();

  factory RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue.fromJson(
          Map<String, dynamic> json) =>
      _$RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$IssueFromJson(
          json);

  String title;

  bool closed;

  String id;

  RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue$UserConnection
      assignees;

  @override
  List<Object> get props => [title, closed, id, assignees];
  Map<String, dynamic> toJson() =>
      _$RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$IssueToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RepoList$Query$User$RepositoryConnection$Repository$IssueConnection
    with EquatableMixin {
  RepoList$Query$User$RepositoryConnection$Repository$IssueConnection();

  factory RepoList$Query$User$RepositoryConnection$Repository$IssueConnection.fromJson(
          Map<String, dynamic> json) =>
      _$RepoList$Query$User$RepositoryConnection$Repository$IssueConnectionFromJson(
          json);

  int totalCount;

  List<RepoList$Query$User$RepositoryConnection$Repository$IssueConnection$Issue>
      nodes;

  @override
  List<Object> get props => [totalCount, nodes];
  Map<String, dynamic> toJson() =>
      _$RepoList$Query$User$RepositoryConnection$Repository$IssueConnectionToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RepoList$Query$User$RepositoryConnection$Repository with EquatableMixin {
  RepoList$Query$User$RepositoryConnection$Repository();

  factory RepoList$Query$User$RepositoryConnection$Repository.fromJson(
          Map<String, dynamic> json) =>
      _$RepoList$Query$User$RepositoryConnection$RepositoryFromJson(json);

  String name;

  String id;

  String description;

  RepoList$Query$User$RepositoryConnection$Repository$IssueConnection issues;

  @override
  List<Object> get props => [name, id, description, issues];
  Map<String, dynamic> toJson() =>
      _$RepoList$Query$User$RepositoryConnection$RepositoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoList$Query$User$RepositoryConnection with EquatableMixin {
  RepoList$Query$User$RepositoryConnection();

  factory RepoList$Query$User$RepositoryConnection.fromJson(
          Map<String, dynamic> json) =>
      _$RepoList$Query$User$RepositoryConnectionFromJson(json);

  int totalCount;

  List<RepoList$Query$User$RepositoryConnection$RepositoryEdge> edges;

  List<RepoList$Query$User$RepositoryConnection$Repository> nodes;

  @override
  List<Object> get props => [totalCount, edges, nodes];
  Map<String, dynamic> toJson() =>
      _$RepoList$Query$User$RepositoryConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoList$Query$User with EquatableMixin {
  RepoList$Query$User();

  factory RepoList$Query$User.fromJson(Map<String, dynamic> json) =>
      _$RepoList$Query$UserFromJson(json);

  RepoList$Query$User$RepositoryConnection repositories;

  @override
  List<Object> get props => [repositories];
  Map<String, dynamic> toJson() => _$RepoList$Query$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoList$Query with EquatableMixin {
  RepoList$Query();

  factory RepoList$Query.fromJson(Map<String, dynamic> json) =>
      _$RepoList$QueryFromJson(json);

  RepoList$Query$User viewer;

  @override
  List<Object> get props => [viewer];
  Map<String, dynamic> toJson() => _$RepoList$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoListArguments extends JsonSerializable with EquatableMixin {
  RepoListArguments({this.first});

  factory RepoListArguments.fromJson(Map<String, dynamic> json) =>
      _$RepoListArgumentsFromJson(json);

  final int first;

  @override
  List<Object> get props => [first];
  Map<String, dynamic> toJson() => _$RepoListArgumentsToJson(this);
}

class RepoListQuery extends GraphQLQuery<RepoList$Query, RepoListArguments> {
  RepoListQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'repo_list'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'first')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
              defaultValue: DefaultValueNode(value: IntValueNode(value: '100')),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'viewer'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'repositories'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                          name: NameNode(value: 'first'),
                          value: VariableNode(name: NameNode(value: 'first'))),
                      ArgumentNode(
                          name: NameNode(value: 'orderBy'),
                          value: ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'field'),
                                value: EnumValueNode(
                                    name: NameNode(value: 'UPDATED_AT'))),
                            ObjectFieldNode(
                                name: NameNode(value: 'direction'),
                                value: EnumValueNode(
                                    name: NameNode(value: 'DESC')))
                          ]))
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'totalCount'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'edges'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'cursor'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ])),
                      FieldNode(
                          name: NameNode(value: 'nodes'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'name'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'id'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'description'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'issues'),
                                alias: null,
                                arguments: [
                                  ArgumentNode(
                                      name: NameNode(value: 'first'),
                                      value: IntValueNode(value: '3')),
                                  ArgumentNode(
                                      name: NameNode(value: 'orderBy'),
                                      value: ObjectValueNode(fields: [
                                        ObjectFieldNode(
                                            name: NameNode(value: 'field'),
                                            value: EnumValueNode(
                                                name: NameNode(
                                                    value: 'UPDATED_AT'))),
                                        ObjectFieldNode(
                                            name: NameNode(value: 'direction'),
                                            value: EnumValueNode(
                                                name: NameNode(value: 'DESC')))
                                      ]))
                                ],
                                directives: [],
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'totalCount'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'nodes'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet:
                                          SelectionSetNode(selections: [
                                        FieldNode(
                                            name: NameNode(value: 'title'),
                                            alias: null,
                                            arguments: [],
                                            directives: [],
                                            selectionSet: null),
                                        FieldNode(
                                            name: NameNode(value: 'closed'),
                                            alias: null,
                                            arguments: [],
                                            directives: [],
                                            selectionSet: null),
                                        FieldNode(
                                            name: NameNode(value: 'id'),
                                            alias: null,
                                            arguments: [],
                                            directives: [],
                                            selectionSet: null),
                                        FieldNode(
                                            name: NameNode(value: 'assignees'),
                                            alias: null,
                                            arguments: [
                                              ArgumentNode(
                                                  name:
                                                      NameNode(value: 'first'),
                                                  value:
                                                      IntValueNode(value: '1'))
                                            ],
                                            directives: [],
                                            selectionSet:
                                                SelectionSetNode(selections: [
                                              FieldNode(
                                                  name:
                                                      NameNode(value: 'nodes'),
                                                  alias: null,
                                                  arguments: [],
                                                  directives: [],
                                                  selectionSet:
                                                      SelectionSetNode(
                                                          selections: [
                                                        FieldNode(
                                                            name: NameNode(
                                                                value:
                                                                    'avatarUrl'),
                                                            alias: null,
                                                            arguments: [
                                                              ArgumentNode(
                                                                  name: NameNode(
                                                                      value:
                                                                          'size'),
                                                                  value: IntValueNode(
                                                                      value:
                                                                          '48'))
                                                            ],
                                                            directives: [],
                                                            selectionSet: null),
                                                        FieldNode(
                                                            name: NameNode(
                                                                value: 'id'),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null)
                                                      ]))
                                            ]))
                                      ]))
                                ]))
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'repo_list';

  @override
  final RepoListArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  RepoList$Query parse(Map<String, dynamic> json) =>
      RepoList$Query.fromJson(json);
}
