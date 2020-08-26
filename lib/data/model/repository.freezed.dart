// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RepositoryTearOff {
  const _$RepositoryTearOff();

// ignore: unused_element
  _Repository call(
      {@required String name,
      String description,
      List<Issue> issues,
      @required int issueCount,
      String cursor,
      String id}) {
    return _Repository(
      name: name,
      description: description,
      issues: issues,
      issueCount: issueCount,
      cursor: cursor,
      id: id,
    );
  }
}

// ignore: unused_element
const $Repository = _$RepositoryTearOff();

mixin _$Repository {
  String get name;
  String get description;
  List<Issue> get issues;
  int get issueCount;
  String get cursor;
  String get id;

  $RepositoryCopyWith<Repository> get copyWith;
}

abstract class $RepositoryCopyWith<$Res> {
  factory $RepositoryCopyWith(
          Repository value, $Res Function(Repository) then) =
      _$RepositoryCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String description,
      List<Issue> issues,
      int issueCount,
      String cursor,
      String id});
}

class _$RepositoryCopyWithImpl<$Res> implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

  final Repository _value;
  // ignore: unused_field
  final $Res Function(Repository) _then;

  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
    Object issues = freezed,
    Object issueCount = freezed,
    Object cursor = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      issues: issues == freezed ? _value.issues : issues as List<Issue>,
      issueCount: issueCount == freezed ? _value.issueCount : issueCount as int,
      cursor: cursor == freezed ? _value.cursor : cursor as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

abstract class _$RepositoryCopyWith<$Res> implements $RepositoryCopyWith<$Res> {
  factory _$RepositoryCopyWith(
          _Repository value, $Res Function(_Repository) then) =
      __$RepositoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String description,
      List<Issue> issues,
      int issueCount,
      String cursor,
      String id});
}

class __$RepositoryCopyWithImpl<$Res> extends _$RepositoryCopyWithImpl<$Res>
    implements _$RepositoryCopyWith<$Res> {
  __$RepositoryCopyWithImpl(
      _Repository _value, $Res Function(_Repository) _then)
      : super(_value, (v) => _then(v as _Repository));

  @override
  _Repository get _value => super._value as _Repository;

  @override
  $Res call({
    Object name = freezed,
    Object description = freezed,
    Object issues = freezed,
    Object issueCount = freezed,
    Object cursor = freezed,
    Object id = freezed,
  }) {
    return _then(_Repository(
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      issues: issues == freezed ? _value.issues : issues as List<Issue>,
      issueCount: issueCount == freezed ? _value.issueCount : issueCount as int,
      cursor: cursor == freezed ? _value.cursor : cursor as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

class _$_Repository implements _Repository {
  const _$_Repository(
      {@required this.name,
      this.description,
      this.issues,
      @required this.issueCount,
      this.cursor,
      this.id})
      : assert(name != null),
        assert(issueCount != null);

  @override
  final String name;
  @override
  final String description;
  @override
  final List<Issue> issues;
  @override
  final int issueCount;
  @override
  final String cursor;
  @override
  final String id;

  @override
  String toString() {
    return 'Repository(name: $name, description: $description, issues: $issues, issueCount: $issueCount, cursor: $cursor, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Repository &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.issues, issues) ||
                const DeepCollectionEquality().equals(other.issues, issues)) &&
            (identical(other.issueCount, issueCount) ||
                const DeepCollectionEquality()
                    .equals(other.issueCount, issueCount)) &&
            (identical(other.cursor, cursor) ||
                const DeepCollectionEquality().equals(other.cursor, cursor)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(issues) ^
      const DeepCollectionEquality().hash(issueCount) ^
      const DeepCollectionEquality().hash(cursor) ^
      const DeepCollectionEquality().hash(id);

  @override
  _$RepositoryCopyWith<_Repository> get copyWith =>
      __$RepositoryCopyWithImpl<_Repository>(this, _$identity);
}

abstract class _Repository implements Repository {
  const factory _Repository(
      {@required String name,
      String description,
      List<Issue> issues,
      @required int issueCount,
      String cursor,
      String id}) = _$_Repository;

  @override
  String get name;
  @override
  String get description;
  @override
  List<Issue> get issues;
  @override
  int get issueCount;
  @override
  String get cursor;
  @override
  String get id;
  @override
  _$RepositoryCopyWith<_Repository> get copyWith;
}
