// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'repo_issues_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RepoIssuesResultTearOff {
  const _$RepoIssuesResultTearOff();

// ignore: unused_element
  RepoIssuesResultData data(List<Issue> issues, int totalCount) {
    return RepoIssuesResultData(
      issues,
      totalCount,
    );
  }

// ignore: unused_element
  RepoIssuesResultLoading loading() {
    return const RepoIssuesResultLoading();
  }

// ignore: unused_element
  RepoIssuesResultError error(String message) {
    return RepoIssuesResultError(
      message,
    );
  }
}

// ignore: unused_element
const $RepoIssuesResult = _$RepoIssuesResultTearOff();

mixin _$RepoIssuesResult {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result data(List<Issue> issues, int totalCount),
    @required Result loading(),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result data(List<Issue> issues, int totalCount),
    Result loading(),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result data(RepoIssuesResultData value),
    @required Result loading(RepoIssuesResultLoading value),
    @required Result error(RepoIssuesResultError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result data(RepoIssuesResultData value),
    Result loading(RepoIssuesResultLoading value),
    Result error(RepoIssuesResultError value),
    @required Result orElse(),
  });
}

abstract class $RepoIssuesResultCopyWith<$Res> {
  factory $RepoIssuesResultCopyWith(
          RepoIssuesResult value, $Res Function(RepoIssuesResult) then) =
      _$RepoIssuesResultCopyWithImpl<$Res>;
}

class _$RepoIssuesResultCopyWithImpl<$Res>
    implements $RepoIssuesResultCopyWith<$Res> {
  _$RepoIssuesResultCopyWithImpl(this._value, this._then);

  final RepoIssuesResult _value;
  // ignore: unused_field
  final $Res Function(RepoIssuesResult) _then;
}

abstract class $RepoIssuesResultDataCopyWith<$Res> {
  factory $RepoIssuesResultDataCopyWith(RepoIssuesResultData value,
          $Res Function(RepoIssuesResultData) then) =
      _$RepoIssuesResultDataCopyWithImpl<$Res>;
  $Res call({List<Issue> issues, int totalCount});
}

class _$RepoIssuesResultDataCopyWithImpl<$Res>
    extends _$RepoIssuesResultCopyWithImpl<$Res>
    implements $RepoIssuesResultDataCopyWith<$Res> {
  _$RepoIssuesResultDataCopyWithImpl(
      RepoIssuesResultData _value, $Res Function(RepoIssuesResultData) _then)
      : super(_value, (v) => _then(v as RepoIssuesResultData));

  @override
  RepoIssuesResultData get _value => super._value as RepoIssuesResultData;

  @override
  $Res call({
    Object issues = freezed,
    Object totalCount = freezed,
  }) {
    return _then(RepoIssuesResultData(
      issues == freezed ? _value.issues : issues as List<Issue>,
      totalCount == freezed ? _value.totalCount : totalCount as int,
    ));
  }
}

class _$RepoIssuesResultData implements RepoIssuesResultData {
  const _$RepoIssuesResultData(this.issues, this.totalCount)
      : assert(issues != null),
        assert(totalCount != null);

  @override
  final List<Issue> issues;
  @override
  final int totalCount;

  @override
  String toString() {
    return 'RepoIssuesResult.data(issues: $issues, totalCount: $totalCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RepoIssuesResultData &&
            (identical(other.issues, issues) ||
                const DeepCollectionEquality().equals(other.issues, issues)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(issues) ^
      const DeepCollectionEquality().hash(totalCount);

  @override
  $RepoIssuesResultDataCopyWith<RepoIssuesResultData> get copyWith =>
      _$RepoIssuesResultDataCopyWithImpl<RepoIssuesResultData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result data(List<Issue> issues, int totalCount),
    @required Result loading(),
    @required Result error(String message),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return data(issues, totalCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result data(List<Issue> issues, int totalCount),
    Result loading(),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(issues, totalCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result data(RepoIssuesResultData value),
    @required Result loading(RepoIssuesResultLoading value),
    @required Result error(RepoIssuesResultError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result data(RepoIssuesResultData value),
    Result loading(RepoIssuesResultLoading value),
    Result error(RepoIssuesResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class RepoIssuesResultData implements RepoIssuesResult {
  const factory RepoIssuesResultData(List<Issue> issues, int totalCount) =
      _$RepoIssuesResultData;

  List<Issue> get issues;
  int get totalCount;
  $RepoIssuesResultDataCopyWith<RepoIssuesResultData> get copyWith;
}

abstract class $RepoIssuesResultLoadingCopyWith<$Res> {
  factory $RepoIssuesResultLoadingCopyWith(RepoIssuesResultLoading value,
          $Res Function(RepoIssuesResultLoading) then) =
      _$RepoIssuesResultLoadingCopyWithImpl<$Res>;
}

class _$RepoIssuesResultLoadingCopyWithImpl<$Res>
    extends _$RepoIssuesResultCopyWithImpl<$Res>
    implements $RepoIssuesResultLoadingCopyWith<$Res> {
  _$RepoIssuesResultLoadingCopyWithImpl(RepoIssuesResultLoading _value,
      $Res Function(RepoIssuesResultLoading) _then)
      : super(_value, (v) => _then(v as RepoIssuesResultLoading));

  @override
  RepoIssuesResultLoading get _value => super._value as RepoIssuesResultLoading;
}

class _$RepoIssuesResultLoading implements RepoIssuesResultLoading {
  const _$RepoIssuesResultLoading();

  @override
  String toString() {
    return 'RepoIssuesResult.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RepoIssuesResultLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result data(List<Issue> issues, int totalCount),
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
    Result data(List<Issue> issues, int totalCount),
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
    @required Result data(RepoIssuesResultData value),
    @required Result loading(RepoIssuesResultLoading value),
    @required Result error(RepoIssuesResultError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result data(RepoIssuesResultData value),
    Result loading(RepoIssuesResultLoading value),
    Result error(RepoIssuesResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RepoIssuesResultLoading implements RepoIssuesResult {
  const factory RepoIssuesResultLoading() = _$RepoIssuesResultLoading;
}

abstract class $RepoIssuesResultErrorCopyWith<$Res> {
  factory $RepoIssuesResultErrorCopyWith(RepoIssuesResultError value,
          $Res Function(RepoIssuesResultError) then) =
      _$RepoIssuesResultErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$RepoIssuesResultErrorCopyWithImpl<$Res>
    extends _$RepoIssuesResultCopyWithImpl<$Res>
    implements $RepoIssuesResultErrorCopyWith<$Res> {
  _$RepoIssuesResultErrorCopyWithImpl(
      RepoIssuesResultError _value, $Res Function(RepoIssuesResultError) _then)
      : super(_value, (v) => _then(v as RepoIssuesResultError));

  @override
  RepoIssuesResultError get _value => super._value as RepoIssuesResultError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(RepoIssuesResultError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$RepoIssuesResultError implements RepoIssuesResultError {
  const _$RepoIssuesResultError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'RepoIssuesResult.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RepoIssuesResultError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $RepoIssuesResultErrorCopyWith<RepoIssuesResultError> get copyWith =>
      _$RepoIssuesResultErrorCopyWithImpl<RepoIssuesResultError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result data(List<Issue> issues, int totalCount),
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
    Result data(List<Issue> issues, int totalCount),
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
    @required Result data(RepoIssuesResultData value),
    @required Result loading(RepoIssuesResultLoading value),
    @required Result error(RepoIssuesResultError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result data(RepoIssuesResultData value),
    Result loading(RepoIssuesResultLoading value),
    Result error(RepoIssuesResultError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RepoIssuesResultError implements RepoIssuesResult {
  const factory RepoIssuesResultError(String message) = _$RepoIssuesResultError;

  String get message;
  $RepoIssuesResultErrorCopyWith<RepoIssuesResultError> get copyWith;
}
