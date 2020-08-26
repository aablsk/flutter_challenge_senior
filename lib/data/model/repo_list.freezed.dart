// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'repo_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ListRepoResultTearOff {
  const _$ListRepoResultTearOff();

// ignore: unused_element
  Data data(List<Repository> repos, int repoCount) {
    return Data(
      repos,
      repoCount,
    );
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  ErrorDetails error(String message) {
    return ErrorDetails(
      message,
    );
  }
}

// ignore: unused_element
const $ListRepoResult = _$ListRepoResultTearOff();

mixin _$ListRepoResult {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result data(List<Repository> repos, int repoCount),
    @required Result loading(),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result data(List<Repository> repos, int repoCount),
    Result loading(),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result data(Data value),
    @required Result loading(Loading value),
    @required Result error(ErrorDetails value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result data(Data value),
    Result loading(Loading value),
    Result error(ErrorDetails value),
    @required Result orElse(),
  });
}

abstract class $ListRepoResultCopyWith<$Res> {
  factory $ListRepoResultCopyWith(
          ListRepoResult value, $Res Function(ListRepoResult) then) =
      _$ListRepoResultCopyWithImpl<$Res>;
}

class _$ListRepoResultCopyWithImpl<$Res>
    implements $ListRepoResultCopyWith<$Res> {
  _$ListRepoResultCopyWithImpl(this._value, this._then);

  final ListRepoResult _value;
  // ignore: unused_field
  final $Res Function(ListRepoResult) _then;
}

abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<Repository> repos, int repoCount});
}

class _$DataCopyWithImpl<$Res> extends _$ListRepoResultCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object repos = freezed,
    Object repoCount = freezed,
  }) {
    return _then(Data(
      repos == freezed ? _value.repos : repos as List<Repository>,
      repoCount == freezed ? _value.repoCount : repoCount as int,
    ));
  }
}

class _$Data implements Data {
  const _$Data(this.repos, this.repoCount)
      : assert(repos != null),
        assert(repoCount != null);

  @override
  final List<Repository> repos;
  @override
  final int repoCount;

  @override
  String toString() {
    return 'ListRepoResult.data(repos: $repos, repoCount: $repoCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.repos, repos) ||
                const DeepCollectionEquality().equals(other.repos, repos)) &&
            (identical(other.repoCount, repoCount) ||
                const DeepCollectionEquality()
                    .equals(other.repoCount, repoCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(repos) ^
      const DeepCollectionEquality().hash(repoCount);

  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result data(List<Repository> repos, int repoCount),
    @required Result loading(),
    @required Result error(String message),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return data(repos, repoCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result data(List<Repository> repos, int repoCount),
    Result loading(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(repos, repoCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result data(Data value),
    @required Result loading(Loading value),
    @required Result error(ErrorDetails value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result data(Data value),
    Result loading(Loading value),
    Result error(ErrorDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Data implements ListRepoResult {
  const factory Data(List<Repository> repos, int repoCount) = _$Data;

  List<Repository> get repos;
  int get repoCount;
  $DataCopyWith<Data> get copyWith;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$ListRepoResultCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'ListRepoResult.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result data(List<Repository> repos, int repoCount),
    @required Result loading(),
    @required Result error(String message),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result data(List<Repository> repos, int repoCount),
    Result loading(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result data(Data value),
    @required Result loading(Loading value),
    @required Result error(ErrorDetails value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result data(Data value),
    Result loading(Loading value),
    Result error(ErrorDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ListRepoResult {
  const factory Loading() = _$Loading;
}

abstract class $ErrorDetailsCopyWith<$Res> {
  factory $ErrorDetailsCopyWith(
          ErrorDetails value, $Res Function(ErrorDetails) then) =
      _$ErrorDetailsCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$ErrorDetailsCopyWithImpl<$Res>
    extends _$ListRepoResultCopyWithImpl<$Res>
    implements $ErrorDetailsCopyWith<$Res> {
  _$ErrorDetailsCopyWithImpl(
      ErrorDetails _value, $Res Function(ErrorDetails) _then)
      : super(_value, (v) => _then(v as ErrorDetails));

  @override
  ErrorDetails get _value => super._value as ErrorDetails;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ErrorDetails(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$ErrorDetails implements ErrorDetails {
  const _$ErrorDetails(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ListRepoResult.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorDetails &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ErrorDetailsCopyWith<ErrorDetails> get copyWith =>
      _$ErrorDetailsCopyWithImpl<ErrorDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result data(List<Repository> repos, int repoCount),
    @required Result loading(),
    @required Result error(String message),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result data(List<Repository> repos, int repoCount),
    Result loading(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result data(Data value),
    @required Result loading(Loading value),
    @required Result error(ErrorDetails value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result data(Data value),
    Result loading(Loading value),
    Result error(ErrorDetails value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorDetails implements ListRepoResult {
  const factory ErrorDetails(String message) = _$ErrorDetails;

  String get message;
  $ErrorDetailsCopyWith<ErrorDetails> get copyWith;
}

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

class _$IssueTearOff {
  const _$IssueTearOff();

// ignore: unused_element
  _Issue call(
      {@required String title,
      @required bool closed,
      String id,
      String cursor,
      List<User> assignees}) {
    return _Issue(
      title: title,
      closed: closed,
      id: id,
      cursor: cursor,
      assignees: assignees,
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
      List<User> assignees});
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
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      closed: closed == freezed ? _value.closed : closed as bool,
      id: id == freezed ? _value.id : id as String,
      cursor: cursor == freezed ? _value.cursor : cursor as String,
      assignees:
          assignees == freezed ? _value.assignees : assignees as List<User>,
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
      List<User> assignees});
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
  }) {
    return _then(_Issue(
      title: title == freezed ? _value.title : title as String,
      closed: closed == freezed ? _value.closed : closed as bool,
      id: id == freezed ? _value.id : id as String,
      cursor: cursor == freezed ? _value.cursor : cursor as String,
      assignees:
          assignees == freezed ? _value.assignees : assignees as List<User>,
    ));
  }
}

class _$_Issue implements _Issue {
  const _$_Issue(
      {@required this.title,
      @required this.closed,
      this.id,
      this.cursor,
      this.assignees})
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
  String toString() {
    return 'Issue(title: $title, closed: $closed, id: $id, cursor: $cursor, assignees: $assignees)';
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
                    .equals(other.assignees, assignees)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(closed) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(cursor) ^
      const DeepCollectionEquality().hash(assignees);

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
      List<User> assignees}) = _$_Issue;

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
  _$IssueCopyWith<_Issue> get copyWith;
}

class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required String login,
      @required String avatarUrl,
      String id,
      String cursor}) {
    return _User(
      login: login,
      avatarUrl: avatarUrl,
      id: id,
      cursor: cursor,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  String get login;
  String get avatarUrl;
  String get id;
  String get cursor;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String login, String avatarUrl, String id, String cursor});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object login = freezed,
    Object avatarUrl = freezed,
    Object id = freezed,
    Object cursor = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed ? _value.login : login as String,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
      id: id == freezed ? _value.id : id as String,
      cursor: cursor == freezed ? _value.cursor : cursor as String,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({String login, String avatarUrl, String id, String cursor});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object login = freezed,
    Object avatarUrl = freezed,
    Object id = freezed,
    Object cursor = freezed,
  }) {
    return _then(_User(
      login: login == freezed ? _value.login : login as String,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
      id: id == freezed ? _value.id : id as String,
      cursor: cursor == freezed ? _value.cursor : cursor as String,
    ));
  }
}

class _$_User implements _User {
  const _$_User(
      {@required this.login, @required this.avatarUrl, this.id, this.cursor})
      : assert(login != null),
        assert(avatarUrl != null);

  @override
  final String login;
  @override
  final String avatarUrl;
  @override
  final String id;
  @override
  final String cursor;

  @override
  String toString() {
    return 'User(login: $login, avatarUrl: $avatarUrl, id: $id, cursor: $cursor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.cursor, cursor) ||
                const DeepCollectionEquality().equals(other.cursor, cursor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(cursor);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required String login,
      @required String avatarUrl,
      String id,
      String cursor}) = _$_User;

  @override
  String get login;
  @override
  String get avatarUrl;
  @override
  String get id;
  @override
  String get cursor;
  @override
  _$UserCopyWith<_User> get copyWith;
}
