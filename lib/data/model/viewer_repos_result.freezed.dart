// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'viewer_repos_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ViewerReposResultTearOff {
  const _$ViewerReposResultTearOff();

// ignore: unused_element
  ViewerReposResultData data(List<Repository> repos, int repoCount) {
    return ViewerReposResultData(
      repos,
      repoCount,
    );
  }

// ignore: unused_element
  ViewerReposResultLoading loading() {
    return const ViewerReposResultLoading();
  }

// ignore: unused_element
  ViewerReposResultError error(String message) {
    return ViewerReposResultError(
      message,
    );
  }
}

// ignore: unused_element
const $ViewerReposResult = _$ViewerReposResultTearOff();

mixin _$ViewerReposResult {
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
    @required Result data(ViewerReposResultData value),
    @required Result loading(ViewerReposResultLoading value),
    @required Result error(ViewerReposResultError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result data(ViewerReposResultData value),
    Result loading(ViewerReposResultLoading value),
    Result error(ViewerReposResultError value),
    @required Result orElse(),
  });
}

abstract class $ViewerReposResultCopyWith<$Res> {
  factory $ViewerReposResultCopyWith(
          ViewerReposResult value, $Res Function(ViewerReposResult) then) =
      _$ViewerReposResultCopyWithImpl<$Res>;
}

class _$ViewerReposResultCopyWithImpl<$Res>
    implements $ViewerReposResultCopyWith<$Res> {
  _$ViewerReposResultCopyWithImpl(this._value, this._then);

  final ViewerReposResult _value;
  // ignore: unused_field
  final $Res Function(ViewerReposResult) _then;
}

abstract class $ViewerReposResultDataCopyWith<$Res> {
  factory $ViewerReposResultDataCopyWith(ViewerReposResultData value,
          $Res Function(ViewerReposResultData) then) =
      _$ViewerReposResultDataCopyWithImpl<$Res>;
  $Res call({List<Repository> repos, int repoCount});
}

class _$ViewerReposResultDataCopyWithImpl<$Res>
    extends _$ViewerReposResultCopyWithImpl<$Res>
    implements $ViewerReposResultDataCopyWith<$Res> {
  _$ViewerReposResultDataCopyWithImpl(
      ViewerReposResultData _value, $Res Function(ViewerReposResultData) _then)
      : super(_value, (v) => _then(v as ViewerReposResultData));

  @override
  ViewerReposResultData get _value => super._value as ViewerReposResultData;

  @override
  $Res call({
    Object repos = freezed,
    Object repoCount = freezed,
  }) {
    return _then(ViewerReposResultData(
      repos == freezed ? _value.repos : repos as List<Repository>,
      repoCount == freezed ? _value.repoCount : repoCount as int,
    ));
  }
}

class _$ViewerReposResultData implements ViewerReposResultData {
  const _$ViewerReposResultData(this.repos, this.repoCount)
      : assert(repos != null),
        assert(repoCount != null);

  @override
  final List<Repository> repos;
  @override
  final int repoCount;

  @override
  String toString() {
    return 'ViewerReposResult.data(repos: $repos, repoCount: $repoCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ViewerReposResultData &&
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
  $ViewerReposResultDataCopyWith<ViewerReposResultData> get copyWith =>
      _$ViewerReposResultDataCopyWithImpl<ViewerReposResultData>(
          this, _$identity);

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
    @required Result data(ViewerReposResultData value),
    @required Result loading(ViewerReposResultLoading value),
    @required Result error(ViewerReposResultError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result data(ViewerReposResultData value),
    Result loading(ViewerReposResultLoading value),
    Result error(ViewerReposResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ViewerReposResultData implements ViewerReposResult {
  const factory ViewerReposResultData(List<Repository> repos, int repoCount) =
      _$ViewerReposResultData;

  List<Repository> get repos;
  int get repoCount;
  $ViewerReposResultDataCopyWith<ViewerReposResultData> get copyWith;
}

abstract class $ViewerReposResultLoadingCopyWith<$Res> {
  factory $ViewerReposResultLoadingCopyWith(ViewerReposResultLoading value,
          $Res Function(ViewerReposResultLoading) then) =
      _$ViewerReposResultLoadingCopyWithImpl<$Res>;
}

class _$ViewerReposResultLoadingCopyWithImpl<$Res>
    extends _$ViewerReposResultCopyWithImpl<$Res>
    implements $ViewerReposResultLoadingCopyWith<$Res> {
  _$ViewerReposResultLoadingCopyWithImpl(ViewerReposResultLoading _value,
      $Res Function(ViewerReposResultLoading) _then)
      : super(_value, (v) => _then(v as ViewerReposResultLoading));

  @override
  ViewerReposResultLoading get _value =>
      super._value as ViewerReposResultLoading;
}

class _$ViewerReposResultLoading implements ViewerReposResultLoading {
  const _$ViewerReposResultLoading();

  @override
  String toString() {
    return 'ViewerReposResult.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ViewerReposResultLoading);
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
    @required Result data(ViewerReposResultData value),
    @required Result loading(ViewerReposResultLoading value),
    @required Result error(ViewerReposResultError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result data(ViewerReposResultData value),
    Result loading(ViewerReposResultLoading value),
    Result error(ViewerReposResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ViewerReposResultLoading implements ViewerReposResult {
  const factory ViewerReposResultLoading() = _$ViewerReposResultLoading;
}

abstract class $ViewerReposResultErrorCopyWith<$Res> {
  factory $ViewerReposResultErrorCopyWith(ViewerReposResultError value,
          $Res Function(ViewerReposResultError) then) =
      _$ViewerReposResultErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$ViewerReposResultErrorCopyWithImpl<$Res>
    extends _$ViewerReposResultCopyWithImpl<$Res>
    implements $ViewerReposResultErrorCopyWith<$Res> {
  _$ViewerReposResultErrorCopyWithImpl(ViewerReposResultError _value,
      $Res Function(ViewerReposResultError) _then)
      : super(_value, (v) => _then(v as ViewerReposResultError));

  @override
  ViewerReposResultError get _value => super._value as ViewerReposResultError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ViewerReposResultError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$ViewerReposResultError implements ViewerReposResultError {
  const _$ViewerReposResultError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ViewerReposResult.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ViewerReposResultError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ViewerReposResultErrorCopyWith<ViewerReposResultError> get copyWith =>
      _$ViewerReposResultErrorCopyWithImpl<ViewerReposResultError>(
          this, _$identity);

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
    @required Result data(ViewerReposResultData value),
    @required Result loading(ViewerReposResultLoading value),
    @required Result error(ViewerReposResultError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result data(ViewerReposResultData value),
    Result loading(ViewerReposResultLoading value),
    Result error(ViewerReposResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ViewerReposResultError implements ViewerReposResult {
  const factory ViewerReposResultError(String message) =
      _$ViewerReposResultError;

  String get message;
  $ViewerReposResultErrorCopyWith<ViewerReposResultError> get copyWith;
}
