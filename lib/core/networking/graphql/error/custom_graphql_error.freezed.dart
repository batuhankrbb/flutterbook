// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'custom_graphql_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomGraphQLErrorTearOff {
  const _$CustomGraphQLErrorTearOff();

  _RequestError request({required OperationException error}) {
    return _RequestError(
      error: error,
    );
  }

  _DecodingError type({String? error}) {
    return _DecodingError(
      error: error,
    );
  }

  _ConnectivityError connectivity({String? error}) {
    return _ConnectivityError(
      error: error,
    );
  }

  _UnknownError unknown({String? error}) {
    return _UnknownError(
      error: error,
    );
  }
}

/// @nodoc
const $CustomGraphQLError = _$CustomGraphQLErrorTearOff();

/// @nodoc
mixin _$CustomGraphQLError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OperationException error) request,
    required TResult Function(String? error) type,
    required TResult Function(String? error) connectivity,
    required TResult Function(String? error) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OperationException error)? request,
    TResult Function(String? error)? type,
    TResult Function(String? error)? connectivity,
    TResult Function(String? error)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OperationException error)? request,
    TResult Function(String? error)? type,
    TResult Function(String? error)? connectivity,
    TResult Function(String? error)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestError value) request,
    required TResult Function(_DecodingError value) type,
    required TResult Function(_ConnectivityError value) connectivity,
    required TResult Function(_UnknownError value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestError value)? request,
    TResult Function(_DecodingError value)? type,
    TResult Function(_ConnectivityError value)? connectivity,
    TResult Function(_UnknownError value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestError value)? request,
    TResult Function(_DecodingError value)? type,
    TResult Function(_ConnectivityError value)? connectivity,
    TResult Function(_UnknownError value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomGraphQLErrorCopyWith<$Res> {
  factory $CustomGraphQLErrorCopyWith(
          CustomGraphQLError value, $Res Function(CustomGraphQLError) then) =
      _$CustomGraphQLErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomGraphQLErrorCopyWithImpl<$Res>
    implements $CustomGraphQLErrorCopyWith<$Res> {
  _$CustomGraphQLErrorCopyWithImpl(this._value, this._then);

  final CustomGraphQLError _value;
  // ignore: unused_field
  final $Res Function(CustomGraphQLError) _then;
}

/// @nodoc
abstract class _$RequestErrorCopyWith<$Res> {
  factory _$RequestErrorCopyWith(
          _RequestError value, $Res Function(_RequestError) then) =
      __$RequestErrorCopyWithImpl<$Res>;
  $Res call({OperationException error});
}

/// @nodoc
class __$RequestErrorCopyWithImpl<$Res>
    extends _$CustomGraphQLErrorCopyWithImpl<$Res>
    implements _$RequestErrorCopyWith<$Res> {
  __$RequestErrorCopyWithImpl(
      _RequestError _value, $Res Function(_RequestError) _then)
      : super(_value, (v) => _then(v as _RequestError));

  @override
  _RequestError get _value => super._value as _RequestError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_RequestError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as OperationException,
    ));
  }
}

/// @nodoc

class _$_RequestError extends _RequestError {
  const _$_RequestError({required this.error}) : super._();

  @override
  final OperationException error;

  @override
  String toString() {
    return 'CustomGraphQLError.request(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$RequestErrorCopyWith<_RequestError> get copyWith =>
      __$RequestErrorCopyWithImpl<_RequestError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OperationException error) request,
    required TResult Function(String? error) type,
    required TResult Function(String? error) connectivity,
    required TResult Function(String? error) unknown,
  }) {
    return request(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OperationException error)? request,
    TResult Function(String? error)? type,
    TResult Function(String? error)? connectivity,
    TResult Function(String? error)? unknown,
  }) {
    return request?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OperationException error)? request,
    TResult Function(String? error)? type,
    TResult Function(String? error)? connectivity,
    TResult Function(String? error)? unknown,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestError value) request,
    required TResult Function(_DecodingError value) type,
    required TResult Function(_ConnectivityError value) connectivity,
    required TResult Function(_UnknownError value) unknown,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestError value)? request,
    TResult Function(_DecodingError value)? type,
    TResult Function(_ConnectivityError value)? connectivity,
    TResult Function(_UnknownError value)? unknown,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestError value)? request,
    TResult Function(_DecodingError value)? type,
    TResult Function(_ConnectivityError value)? connectivity,
    TResult Function(_UnknownError value)? unknown,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class _RequestError extends CustomGraphQLError {
  const factory _RequestError({required OperationException error}) =
      _$_RequestError;
  const _RequestError._() : super._();

  OperationException get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RequestErrorCopyWith<_RequestError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DecodingErrorCopyWith<$Res> {
  factory _$DecodingErrorCopyWith(
          _DecodingError value, $Res Function(_DecodingError) then) =
      __$DecodingErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$DecodingErrorCopyWithImpl<$Res>
    extends _$CustomGraphQLErrorCopyWithImpl<$Res>
    implements _$DecodingErrorCopyWith<$Res> {
  __$DecodingErrorCopyWithImpl(
      _DecodingError _value, $Res Function(_DecodingError) _then)
      : super(_value, (v) => _then(v as _DecodingError));

  @override
  _DecodingError get _value => super._value as _DecodingError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_DecodingError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DecodingError extends _DecodingError {
  const _$_DecodingError({this.error}) : super._();

  @override
  final String? error;

  @override
  String toString() {
    return 'CustomGraphQLError.type(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DecodingError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$DecodingErrorCopyWith<_DecodingError> get copyWith =>
      __$DecodingErrorCopyWithImpl<_DecodingError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OperationException error) request,
    required TResult Function(String? error) type,
    required TResult Function(String? error) connectivity,
    required TResult Function(String? error) unknown,
  }) {
    return type(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OperationException error)? request,
    TResult Function(String? error)? type,
    TResult Function(String? error)? connectivity,
    TResult Function(String? error)? unknown,
  }) {
    return type?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OperationException error)? request,
    TResult Function(String? error)? type,
    TResult Function(String? error)? connectivity,
    TResult Function(String? error)? unknown,
    required TResult orElse(),
  }) {
    if (type != null) {
      return type(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestError value) request,
    required TResult Function(_DecodingError value) type,
    required TResult Function(_ConnectivityError value) connectivity,
    required TResult Function(_UnknownError value) unknown,
  }) {
    return type(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestError value)? request,
    TResult Function(_DecodingError value)? type,
    TResult Function(_ConnectivityError value)? connectivity,
    TResult Function(_UnknownError value)? unknown,
  }) {
    return type?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestError value)? request,
    TResult Function(_DecodingError value)? type,
    TResult Function(_ConnectivityError value)? connectivity,
    TResult Function(_UnknownError value)? unknown,
    required TResult orElse(),
  }) {
    if (type != null) {
      return type(this);
    }
    return orElse();
  }
}

abstract class _DecodingError extends CustomGraphQLError {
  const factory _DecodingError({String? error}) = _$_DecodingError;
  const _DecodingError._() : super._();

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DecodingErrorCopyWith<_DecodingError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConnectivityErrorCopyWith<$Res> {
  factory _$ConnectivityErrorCopyWith(
          _ConnectivityError value, $Res Function(_ConnectivityError) then) =
      __$ConnectivityErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$ConnectivityErrorCopyWithImpl<$Res>
    extends _$CustomGraphQLErrorCopyWithImpl<$Res>
    implements _$ConnectivityErrorCopyWith<$Res> {
  __$ConnectivityErrorCopyWithImpl(
      _ConnectivityError _value, $Res Function(_ConnectivityError) _then)
      : super(_value, (v) => _then(v as _ConnectivityError));

  @override
  _ConnectivityError get _value => super._value as _ConnectivityError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_ConnectivityError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ConnectivityError extends _ConnectivityError {
  const _$_ConnectivityError({this.error}) : super._();

  @override
  final String? error;

  @override
  String toString() {
    return 'CustomGraphQLError.connectivity(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConnectivityError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ConnectivityErrorCopyWith<_ConnectivityError> get copyWith =>
      __$ConnectivityErrorCopyWithImpl<_ConnectivityError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OperationException error) request,
    required TResult Function(String? error) type,
    required TResult Function(String? error) connectivity,
    required TResult Function(String? error) unknown,
  }) {
    return connectivity(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OperationException error)? request,
    TResult Function(String? error)? type,
    TResult Function(String? error)? connectivity,
    TResult Function(String? error)? unknown,
  }) {
    return connectivity?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OperationException error)? request,
    TResult Function(String? error)? type,
    TResult Function(String? error)? connectivity,
    TResult Function(String? error)? unknown,
    required TResult orElse(),
  }) {
    if (connectivity != null) {
      return connectivity(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestError value) request,
    required TResult Function(_DecodingError value) type,
    required TResult Function(_ConnectivityError value) connectivity,
    required TResult Function(_UnknownError value) unknown,
  }) {
    return connectivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestError value)? request,
    TResult Function(_DecodingError value)? type,
    TResult Function(_ConnectivityError value)? connectivity,
    TResult Function(_UnknownError value)? unknown,
  }) {
    return connectivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestError value)? request,
    TResult Function(_DecodingError value)? type,
    TResult Function(_ConnectivityError value)? connectivity,
    TResult Function(_UnknownError value)? unknown,
    required TResult orElse(),
  }) {
    if (connectivity != null) {
      return connectivity(this);
    }
    return orElse();
  }
}

abstract class _ConnectivityError extends CustomGraphQLError {
  const factory _ConnectivityError({String? error}) = _$_ConnectivityError;
  const _ConnectivityError._() : super._();

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConnectivityErrorCopyWith<_ConnectivityError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnknownErrorCopyWith<$Res> {
  factory _$UnknownErrorCopyWith(
          _UnknownError value, $Res Function(_UnknownError) then) =
      __$UnknownErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$UnknownErrorCopyWithImpl<$Res>
    extends _$CustomGraphQLErrorCopyWithImpl<$Res>
    implements _$UnknownErrorCopyWith<$Res> {
  __$UnknownErrorCopyWithImpl(
      _UnknownError _value, $Res Function(_UnknownError) _then)
      : super(_value, (v) => _then(v as _UnknownError));

  @override
  _UnknownError get _value => super._value as _UnknownError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_UnknownError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UnknownError extends _UnknownError {
  const _$_UnknownError({this.error}) : super._();

  @override
  final String? error;

  @override
  String toString() {
    return 'CustomGraphQLError.unknown(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnknownError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$UnknownErrorCopyWith<_UnknownError> get copyWith =>
      __$UnknownErrorCopyWithImpl<_UnknownError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OperationException error) request,
    required TResult Function(String? error) type,
    required TResult Function(String? error) connectivity,
    required TResult Function(String? error) unknown,
  }) {
    return unknown(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OperationException error)? request,
    TResult Function(String? error)? type,
    TResult Function(String? error)? connectivity,
    TResult Function(String? error)? unknown,
  }) {
    return unknown?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OperationException error)? request,
    TResult Function(String? error)? type,
    TResult Function(String? error)? connectivity,
    TResult Function(String? error)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestError value) request,
    required TResult Function(_DecodingError value) type,
    required TResult Function(_ConnectivityError value) connectivity,
    required TResult Function(_UnknownError value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestError value)? request,
    TResult Function(_DecodingError value)? type,
    TResult Function(_ConnectivityError value)? connectivity,
    TResult Function(_UnknownError value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestError value)? request,
    TResult Function(_DecodingError value)? type,
    TResult Function(_ConnectivityError value)? connectivity,
    TResult Function(_UnknownError value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownError extends CustomGraphQLError {
  const factory _UnknownError({String? error}) = _$_UnknownError;
  const _UnknownError._() : super._();

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnknownErrorCopyWith<_UnknownError> get copyWith =>
      throw _privateConstructorUsedError;
}
