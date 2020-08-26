import 'package:flutter/material.dart';
import 'package:flutter_challenge_senior/data/model/issue.dart';

class IssueItemSmall extends StatelessWidget {
  IssueItemSmall({Key key, this.issue}) : super(key: key);

  final Issue issue;

  @override
  Widget build(BuildContext context) {
    final assigneeAvatarUrl =
        issue?.assignees?.length != null && issue.assignees.length > 0
            ? issue.assignees.first.avatarUrl
            : null;
    final colorScheme = Theme.of(context).colorScheme;
    if (issue != null) {
      return Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1,
              color: Colors.grey[500],
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Text(
                  issue.title ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                children: [
                  assigneeAvatarUrl != null
                      ? CircleAvatar(
                          maxRadius: 10,
                          backgroundImage: NetworkImage(assigneeAvatarUrl),
                        )
                      : Container(),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    issue.closed ? 'CLOSED' : 'OPEN',
                    style: Theme.of(context).textTheme.caption.apply(
                          color: issue.closed
                              ? colorScheme.primary
                              : colorScheme.secondary,
                          fontWeightDelta: 1,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
    return Container();
  }
}
