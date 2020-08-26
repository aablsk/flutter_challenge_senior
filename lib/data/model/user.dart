import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required String login,
    @required String avatarUrl,
    String id,
    String cursor,
  }) = _User;

  static User fromGqlResult(dynamic user) {
    return User(
      login: user['login'],
      avatarUrl: user['avatarUrl'],
    );
  }
}
