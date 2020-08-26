// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$IssueTearOff {
  const _$IssueTearOff();

// ignore: unused_element
  _Issue call(
      {@required String title,
      @required bool closed,
      String id,
      String cursor,
      List<User> assignees,
      User author,
      String bodyText,
      DateTime updatedAt}) {
    return _Issue(
      title: title,
      closed: closed,
      id: id,
      cursor: cursor,
      assignees: assignees,
      author: author,
      bodyText: bodyText,
      updatedAt: updatedAt,
    );
  }
}

// ignore: unused_element
const $Issue = _$IssueTearOff();

mixin _$Issue {
  String get title;
  bool get closed;
  String get id;
  String get cursor;
  List<User> get assignees;
  User get author;
  String get bodyText;
  DateTime get updatedAt;

  $IssueCopyWith<Issue> get copyWith;
}

abstract class $IssueCopyWith<$Res> {
  factory $IssueCopyWith(Issue value, $Res Function(Issue) then) =
      _$IssueCopyWithImpl<$Res>;
  $Res call(
      {String title,
      bool closed,
      String id,
      String cursor,
      List<User> assignees,
      User author,
      String bodyText,
      DateTime updatedAt});
}

class _$IssueCopyWithImpl<$Res> implements $IssueCopyWith<$Res> {
  _$IssueCopyWithImpl(this._value, this._then);

  final Issue _value;
  // ignore: unused_field
  final $Res Function(Issue) _then;

  @override
  $Res call({
    Object title = freezed,
    Object closed = freezed,
    Object id = freezed,
    Object cursor = freezed,
    Object assignees = freezed,
    Object author = freezed,
    Object bodyText = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      closed: closed == freezed ? _value.closed : closed as bool,
      id: id == freezed ? _value.id : id as String,
      cursor: cursor == freezed ? _value.cursor : cursor as String,
      assignees:
          assignees == freezed ? _value.assignees : assignees as List<User>,
      author: author == freezed ? _value.author : author as User,
      bodyText: bodyText == freezed ? _value.bodyText : bodyText as String,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

abstract class _$IssueCopyWith<$Res> implements $IssueCopyWith<$Res> {
  factory _$IssueCopyWith(_Issue value, $Res Function(_Issue) then) =
      __$IssueCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      bool closed,
      String id,
      String cursor,
      List<User> assignees,
      User author,
      String bodyText,
      DateTime updatedAt});
}

class __$IssueCopyWithImpl<$Res> extends _$IssueCopyWithImpl<$Res>
    implements _$IssueCopyWith<$Res> {
  __$IssueCopyWithImpl(_Issue _value, $Res Function(_Issue) _then)
      : super(_value, (v) => _then(v as _Issue));

  @override
  _Issue get _value => super._value as _Issue;

  @override
  $Res call({
    Object title = freezed,
    Object closed = freezed,
    Object id = freezed,
    Object cursor = freezed,
    Object assignees = freezed,
    Object author = freezed,
    Object bodyText = freezed,
    Object updatedAt = freezed,
  }) {
    return _then(_Issue(
      title: title == freezed ? _value.title : title as String,
      closed: closed == freezed ? _value.closed : closed as bool,
      id: id == freezed ? _value.id : id as String,
      cursor: cursor == freezed ? _value.cursor : cursor as String,
      assignees:
          assignees == freezed ? _value.assignees : assignees as List<User>,
      author: author == freezed ? _value.author : author as User,
      bodyText: bodyText == freezed ? _value.bodyText : bodyText as String,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
    ));
  }
}

class _$_Issue implements _Issue {
  const _$_Issue(
      {@required this.title,
      @required this.closed,
      this.id,
      this.cursor,
      this.assignees,
      this.author,
      this.bodyText,
      this.updatedAt})
      : assert(title != null),
        assert(closed != null);

  @override
  final String title;
  @override
  final bool closed;
  @override
  final String id;
  @override
  final String cursor;
  @override
  final List<User> assignees;
  @override
  final User author;
  @override
  final String bodyText;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Issue(title: $title, closed: $closed, id: $id, cursor: $cursor, assignees: $assignees, author: $author, bodyText: $bodyText, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Issue &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.closed, closed) ||
                const DeepCollectionEquality().equals(other.closed, closed)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.cursor, cursor) ||
                const DeepCollectionEquality().equals(other.cursor, cursor)) &&
            (identical(other.assignees, assignees) ||
                const DeepCollectionEquality()
                    .equals(other.assignees, assignees)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.bodyText, bodyText) ||
                const DeepCollectionEquality()
                    .equals(other.bodyText, bodyText)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(closed) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(cursor) ^
      const DeepCollectionEquality().hash(assignees) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(bodyText) ^
      const DeepCollectionEquality().hash(updatedAt);

  @override
  _$IssueCopyWith<_Issue> get copyWith =>
      __$IssueCopyWithImpl<_Issue>(this, _$identity);
}

abstract class _Issue implements Issue {
  const factory _Issue(
      {@required String title,
      @required bool closed,
      String id,
      String cursor,
      List<User> assignees,
      User author,
      String bodyText,
      DateTime updatedAt}) = _$_Issue;

  @override
  String get title;
  @override
  bool get closed;
  @override
  String get id;
  @override
  String get cursor;
  @override
  List<User> get assignees;
  @override
  User get author;
  @override
  String get bodyText;
  @override
  DateTime get updatedAt;
  @override
  _$IssueCopyWith<_Issue> get copyWith;
}
