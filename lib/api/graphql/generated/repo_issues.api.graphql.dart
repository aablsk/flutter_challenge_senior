// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'repo_issues.api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection$User
    with EquatableMixin {
  RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection$User();

  factory RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection$User.fromJson(
          Map<String, dynamic> json) =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection$UserFromJson(
          json);

  String avatarUrl;

  String login;

  @override
  List<Object> get props => [avatarUrl, login];
  Map<String, dynamic> toJson() =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection$UserToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection
    with EquatableMixin {
  RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection();

  factory RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection.fromJson(
          Map<String, dynamic> json) =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnectionFromJson(
          json);

  List<RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection$User>
      nodes;

  @override
  List<Object> get props => [nodes];
  Map<String, dynamic> toJson() =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnectionToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RepoIssues$Query$User$Repository$IssueConnection$Issue$Actor
    with EquatableMixin {
  RepoIssues$Query$User$Repository$IssueConnection$Issue$Actor();

  factory RepoIssues$Query$User$Repository$IssueConnection$Issue$Actor.fromJson(
          Map<String, dynamic> json) =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$ActorFromJson(
          json);

  String login;

  String avatarUrl;

  @override
  @JsonKey(name: '__typename')
  String typeName;

  @override
  List<Object> get props => [login, avatarUrl, typeName];
  Map<String, dynamic> toJson() =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$ActorToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment$Actor
    with EquatableMixin {
  RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment$Actor();

  factory RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment$Actor.fromJson(
          Map<String, dynamic> json) =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment$ActorFromJson(
          json);

  String login;

  String avatarUrl;

  @override
  @JsonKey(name: '__typename')
  String typeName;

  @override
  List<Object> get props => [login, avatarUrl, typeName];
  Map<String, dynamic> toJson() =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment$ActorToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment
    with EquatableMixin {
  RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment();

  factory RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment.fromJson(
          Map<String, dynamic> json) =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueCommentFromJson(
          json);

  RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment$Actor
      author;

  String bodyText;

  @override
  List<Object> get props => [author, bodyText];
  Map<String, dynamic> toJson() =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueCommentToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection
    with EquatableMixin {
  RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection();

  factory RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection.fromJson(
          Map<String, dynamic> json) =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnectionFromJson(
          json);

  List<RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection$IssueComment>
      nodes;

  int totalCount;

  @override
  List<Object> get props => [nodes, totalCount];
  Map<String, dynamic> toJson() =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnectionToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection$Label
    with EquatableMixin {
  RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection$Label();

  factory RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection$Label.fromJson(
          Map<String, dynamic> json) =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection$LabelFromJson(
          json);

  String name;

  @override
  List<Object> get props => [name];
  Map<String, dynamic> toJson() =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection$LabelToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection
    with EquatableMixin {
  RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection();

  factory RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection.fromJson(
          Map<String, dynamic> json) =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnectionFromJson(
          json);

  List<RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection$Label>
      nodes;

  @override
  List<Object> get props => [nodes];
  Map<String, dynamic> toJson() =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnectionToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RepoIssues$Query$User$Repository$IssueConnection$Issue$Milestone
    with EquatableMixin {
  RepoIssues$Query$User$Repository$IssueConnection$Issue$Milestone();

  factory RepoIssues$Query$User$Repository$IssueConnection$Issue$Milestone.fromJson(
          Map<String, dynamic> json) =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$MilestoneFromJson(
          json);

  String title;

  @override
  List<Object> get props => [title];
  Map<String, dynamic> toJson() =>
      _$RepoIssues$Query$User$Repository$IssueConnection$Issue$MilestoneToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class RepoIssues$Query$User$Repository$IssueConnection$Issue
    with EquatableMixin {
  RepoIssues$Query$User$Repository$IssueConnection$Issue();

  factory RepoIssues$Query$User$Repository$IssueConnection$Issue.fromJson(
          Map<String, dynamic> json) =>
      _$RepoIssues$Query$User$Repository$IssueConnection$IssueFromJson(json);

  String id;

  String bodyText;

  RepoIssues$Query$User$Repository$IssueConnection$Issue$UserConnection
      assignees;

  RepoIssues$Query$User$Repository$IssueConnection$Issue$Actor author;

  bool closed;

  RepoIssues$Query$User$Repository$IssueConnection$Issue$IssueCommentConnection
      comments;

  RepoIssues$Query$User$Repository$IssueConnection$Issue$LabelConnection labels;

  RepoIssues$Query$User$Repository$IssueConnection$Issue$Milestone milestone;

  String title;

  DateTime updatedAt;

  @override
  List<Object> get props => [
        id,
        bodyText,
        assignees,
        author,
        closed,
        comments,
        labels,
        milestone,
        title,
        updatedAt
      ];
  Map<String, dynamic> toJson() =>
      _$RepoIssues$Query$User$Repository$IssueConnection$IssueToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoIssues$Query$User$Repository$IssueConnection$IssueEdge
    with EquatableMixin {
  RepoIssues$Query$User$Repository$IssueConnection$IssueEdge();

  factory RepoIssues$Query$User$Repository$IssueConnection$IssueEdge.fromJson(
          Map<String, dynamic> json) =>
      _$RepoIssues$Query$User$Repository$IssueConnection$IssueEdgeFromJson(
          json);

  String cursor;

  @override
  List<Object> get props => [cursor];
  Map<String, dynamic> toJson() =>
      _$RepoIssues$Query$User$Repository$IssueConnection$IssueEdgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoIssues$Query$User$Repository$IssueConnection with EquatableMixin {
  RepoIssues$Query$User$Repository$IssueConnection();

  factory RepoIssues$Query$User$Repository$IssueConnection.fromJson(
          Map<String, dynamic> json) =>
      _$RepoIssues$Query$User$Repository$IssueConnectionFromJson(json);

  int totalCount;

  List<RepoIssues$Query$User$Repository$IssueConnection$Issue> nodes;

  List<RepoIssues$Query$User$Repository$IssueConnection$IssueEdge> edges;

  @override
  List<Object> get props => [totalCount, nodes, edges];
  Map<String, dynamic> toJson() =>
      _$RepoIssues$Query$User$Repository$IssueConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoIssues$Query$User$Repository with EquatableMixin {
  RepoIssues$Query$User$Repository();

  factory RepoIssues$Query$User$Repository.fromJson(
          Map<String, dynamic> json) =>
      _$RepoIssues$Query$User$RepositoryFromJson(json);

  RepoIssues$Query$User$Repository$IssueConnection issues;

  @override
  List<Object> get props => [issues];
  Map<String, dynamic> toJson() =>
      _$RepoIssues$Query$User$RepositoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoIssues$Query$User with EquatableMixin {
  RepoIssues$Query$User();

  factory RepoIssues$Query$User.fromJson(Map<String, dynamic> json) =>
      _$RepoIssues$Query$UserFromJson(json);

  RepoIssues$Query$User$Repository repository;

  @override
  List<Object> get props => [repository];
  Map<String, dynamic> toJson() => _$RepoIssues$Query$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoIssues$Query with EquatableMixin {
  RepoIssues$Query();

  factory RepoIssues$Query.fromJson(Map<String, dynamic> json) =>
      _$RepoIssues$QueryFromJson(json);

  RepoIssues$Query$User viewer;

  @override
  List<Object> get props => [viewer];
  Map<String, dynamic> toJson() => _$RepoIssues$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RepoIssuesArguments extends JsonSerializable with EquatableMixin {
  RepoIssuesArguments({@required this.repoName});

  factory RepoIssuesArguments.fromJson(Map<String, dynamic> json) =>
      _$RepoIssuesArgumentsFromJson(json);

  final String repoName;

  @override
  List<Object> get props => [repoName];
  Map<String, dynamic> toJson() => _$RepoIssuesArgumentsToJson(this);
}

class RepoIssuesQuery
    extends GraphQLQuery<RepoIssues$Query, RepoIssuesArguments> {
  RepoIssuesQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'repo_issues'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'repoName')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
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
                    name: NameNode(value: 'repository'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                          name: NameNode(value: 'name'),
                          value:
                              VariableNode(name: NameNode(value: 'repoName')))
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'issues'),
                          alias: null,
                          arguments: [
                            ArgumentNode(
                                name: NameNode(value: 'first'),
                                value: IntValueNode(value: '100'))
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
                                selectionSet: SelectionSetNode(selections: [
                                  FieldNode(
                                      name: NameNode(value: 'id'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'bodyText'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'assignees'),
                                      alias: null,
                                      arguments: [
                                        ArgumentNode(
                                            name: NameNode(value: 'first'),
                                            value: IntValueNode(value: '10'))
                                      ],
                                      directives: [],
                                      selectionSet:
                                          SelectionSetNode(selections: [
                                        FieldNode(
                                            name: NameNode(value: 'nodes'),
                                            alias: null,
                                            arguments: [],
                                            directives: [],
                                            selectionSet:
                                                SelectionSetNode(selections: [
                                              FieldNode(
                                                  name: NameNode(
                                                      value: 'avatarUrl'),
                                                  alias: null,
                                                  arguments: [
                                                    ArgumentNode(
                                                        name: NameNode(
                                                            value: 'size'),
                                                        value: IntValueNode(
                                                            value: '48'))
                                                  ],
                                                  directives: [],
                                                  selectionSet: null),
                                              FieldNode(
                                                  name:
                                                      NameNode(value: 'login'),
                                                  alias: null,
                                                  arguments: [],
                                                  directives: [],
                                                  selectionSet: null)
                                            ]))
                                      ])),
                                  FieldNode(
                                      name: NameNode(value: 'author'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet:
                                          SelectionSetNode(selections: [
                                        FieldNode(
                                            name: NameNode(value: 'login'),
                                            alias: null,
                                            arguments: [],
                                            directives: [],
                                            selectionSet: null),
                                        FieldNode(
                                            name: NameNode(value: 'avatarUrl'),
                                            alias: null,
                                            arguments: [
                                              ArgumentNode(
                                                  name: NameNode(value: 'size'),
                                                  value:
                                                      IntValueNode(value: '48'))
                                            ],
                                            directives: [],
                                            selectionSet: null)
                                      ])),
                                  FieldNode(
                                      name: NameNode(value: 'closed'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'comments'),
                                      alias: null,
                                      arguments: [
                                        ArgumentNode(
                                            name: NameNode(value: 'last'),
                                            value: IntValueNode(value: '2'))
                                      ],
                                      directives: [],
                                      selectionSet:
                                          SelectionSetNode(selections: [
                                        FieldNode(
                                            name: NameNode(value: 'nodes'),
                                            alias: null,
                                            arguments: [],
                                            directives: [],
                                            selectionSet:
                                                SelectionSetNode(selections: [
                                              FieldNode(
                                                  name:
                                                      NameNode(value: 'author'),
                                                  alias: null,
                                                  arguments: [],
                                                  directives: [],
                                                  selectionSet:
                                                      SelectionSetNode(
                                                          selections: [
                                                        FieldNode(
                                                            name: NameNode(
                                                                value: 'login'),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null),
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
                                                            selectionSet: null)
                                                      ])),
                                              FieldNode(
                                                  name: NameNode(
                                                      value: 'bodyText'),
                                                  alias: null,
                                                  arguments: [],
                                                  directives: [],
                                                  selectionSet: null)
                                            ])),
                                        FieldNode(
                                            name: NameNode(value: 'totalCount'),
                                            alias: null,
                                            arguments: [],
                                            directives: [],
                                            selectionSet: null)
                                      ])),
                                  FieldNode(
                                      name: NameNode(value: 'labels'),
                                      alias: null,
                                      arguments: [
                                        ArgumentNode(
                                            name: NameNode(value: 'first'),
                                            value: IntValueNode(value: '10'))
                                      ],
                                      directives: [],
                                      selectionSet:
                                          SelectionSetNode(selections: [
                                        FieldNode(
                                            name: NameNode(value: 'nodes'),
                                            alias: null,
                                            arguments: [],
                                            directives: [],
                                            selectionSet:
                                                SelectionSetNode(selections: [
                                              FieldNode(
                                                  name: NameNode(value: 'name'),
                                                  alias: null,
                                                  arguments: [],
                                                  directives: [],
                                                  selectionSet: null)
                                            ]))
                                      ])),
                                  FieldNode(
                                      name: NameNode(value: 'milestone'),
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
                                            selectionSet: null)
                                      ])),
                                  FieldNode(
                                      name: NameNode(value: 'title'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null),
                                  FieldNode(
                                      name: NameNode(value: 'updatedAt'),
                                      alias: null,
                                      arguments: [],
                                      directives: [],
                                      selectionSet: null)
                                ])),
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
                                ]))
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'repo_issues';

  @override
  final RepoIssuesArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  RepoIssues$Query parse(Map<String, dynamic> json) =>
      RepoIssues$Query.fromJson(json);
}
