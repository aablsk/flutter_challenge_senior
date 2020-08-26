import 'package:flutter_challenge_senior/data/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue.freezed.dart';

@freezed
abstract class Issue with _$Issue {
  const factory Issue({
    @required String title,
    @required bool closed,
    String id,
    String cursor,
    List<User> assignees,
    User author,
    String bodyText,
    DateTime updatedAt,
  }) = _Issue;

  static Issue fromGqlResult(dynamic issue) {
    final assignees = issue['assignees']['nodes'] as List<dynamic>;
    final author =
        issue['author'] != null ? User.fromGqlResult(issue['author']) : null;
    final updatedAt =
        issue['updatedAt'] != null ? DateTime.parse(issue['updatedAt']) : null;

    return Issue(
      title: issue['title'],
      closed: issue['closed'],
      id: issue['id'],
      assignees: assignees.map(User.fromGqlResult).toList(),
      author: author,
      bodyText: issue['bodyText'],
      updatedAt: updatedAt,
    );
  }
}
