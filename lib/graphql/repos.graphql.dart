// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'repos.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class ListRepos$Query$User$RepositoryConnection$Repository with EquatableMixin {
  ListRepos$Query$User$RepositoryConnection$Repository();

  factory ListRepos$Query$User$RepositoryConnection$Repository.fromJson(
          Map<String, dynamic> json) =>
      _$ListRepos$Query$User$RepositoryConnection$RepositoryFromJson(json);

  bool hasIssuesEnabled;

  String name;

  @override
  List<Object> get props => [hasIssuesEnabled, name];
  Map<String, dynamic> toJson() =>
      _$ListRepos$Query$User$RepositoryConnection$RepositoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListRepos$Query$User$RepositoryConnection with EquatableMixin {
  ListRepos$Query$User$RepositoryConnection();

  factory ListRepos$Query$User$RepositoryConnection.fromJson(
          Map<String, dynamic> json) =>
      _$ListRepos$Query$User$RepositoryConnectionFromJson(json);

  List<ListRepos$Query$User$RepositoryConnection$Repository> nodes;

  @override
  List<Object> get props => [nodes];
  Map<String, dynamic> toJson() =>
      _$ListRepos$Query$User$RepositoryConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListRepos$Query$User with EquatableMixin {
  ListRepos$Query$User();

  factory ListRepos$Query$User.fromJson(Map<String, dynamic> json) =>
      _$ListRepos$Query$UserFromJson(json);

  ListRepos$Query$User$RepositoryConnection repositories;

  @override
  List<Object> get props => [repositories];
  Map<String, dynamic> toJson() => _$ListRepos$Query$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListRepos$Query with EquatableMixin {
  ListRepos$Query();

  factory ListRepos$Query.fromJson(Map<String, dynamic> json) =>
      _$ListRepos$QueryFromJson(json);

  ListRepos$Query$User user;

  @override
  List<Object> get props => [user];
  Map<String, dynamic> toJson() => _$ListRepos$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListReposArguments extends JsonSerializable with EquatableMixin {
  ListReposArguments({@required this.login});

  factory ListReposArguments.fromJson(Map<String, dynamic> json) =>
      _$ListReposArgumentsFromJson(json);

  final String login;

  @override
  List<Object> get props => [login];
  Map<String, dynamic> toJson() => _$ListReposArgumentsToJson(this);
}

class ListReposQuery extends GraphQLQuery<ListRepos$Query, ListReposArguments> {
  ListReposQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'list_repos'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'login')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'user'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'login'),
                    value: VariableNode(name: NameNode(value: 'login')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'repositories'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                          name: NameNode(value: 'first'),
                          value: IntValueNode(value: '10'))
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'nodes'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: '__typename'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'hasIssuesEnabled'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null),
                            FieldNode(
                                name: NameNode(value: 'name'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'list_repos';

  @override
  final ListReposArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  ListRepos$Query parse(Map<String, dynamic> json) =>
      ListRepos$Query.fromJson(json);
}
