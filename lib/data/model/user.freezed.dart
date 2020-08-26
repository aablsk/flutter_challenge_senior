// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
