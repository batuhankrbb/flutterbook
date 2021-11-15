// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_result_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkResultTearOff {
  const _$NetworkResultTearOff();

  _NetworkSuccess<T, E> success<T, E extends Exception>(T data) {
    return _NetworkSuccess<T, E>(
      data,
    );
  }

  _NetworkFailure<T, E> failure<T, E extends Exception>(E error) {
    return _NetworkFailure<T, E>(
      error,
    );
  }
}

/// @nodoc
const $NetworkResult = _$NetworkResultTearOff();

/// @nodoc
mixin _$NetworkResult<T, E extends Exception> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(E error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkSuccess<T, E> value) success,
    required TResult Function(_NetworkFailure<T, E> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkSuccess<T, E> value)? success,
    TResult Function(_NetworkFailure<T, E> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkSuccess<T, E> value)? success,
    TResult Function(_NetworkFailure<T, E> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkResultCopyWith<T, E extends Exception, $Res> {
  factory $NetworkResultCopyWith(
          NetworkResult<T, E> value, $Res Function(NetworkResult<T, E>) then) =
      _$NetworkResultCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class _$NetworkResultCopyWithImpl<T, E extends Exception, $Res>
    implements $NetworkResultCopyWith<T, E, $Res> {
  _$NetworkResultCopyWithImpl(this._value, this._then);

  final NetworkResult<T, E> _value;
  // ignore: unused_field
  final $Res Function(NetworkResult<T, E>) _then;
}

/// @nodoc
abstract class _$NetworkSuccessCopyWith<T, E extends Exception, $Res> {
  factory _$NetworkSuccessCopyWith(_NetworkSuccess<T, E> value,
          $Res Function(_NetworkSuccess<T, E>) then) =
      __$NetworkSuccessCopyWithImpl<T, E, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$NetworkSuccessCopyWithImpl<T, E extends Exception, $Res>
    extends _$NetworkResultCopyWithImpl<T, E, $Res>
    implements _$NetworkSuccessCopyWith<T, E, $Res> {
  __$NetworkSuccessCopyWithImpl(
      _NetworkSuccess<T, E> _value, $Res Function(_NetworkSuccess<T, E>) _then)
      : super(_value, (v) => _then(v as _NetworkSuccess<T, E>));

  @override
  _NetworkSuccess<T, E> get _value => super._value as _NetworkSuccess<T, E>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_NetworkSuccess<T, E>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_NetworkSuccess<T, E extends Exception>
    implements _NetworkSuccess<T, E> {
  const _$_NetworkSuccess(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'NetworkResult<$T, $E>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NetworkSuccess<T, E> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$NetworkSuccessCopyWith<T, E, _NetworkSuccess<T, E>> get copyWith =>
      __$NetworkSuccessCopyWithImpl<T, E, _NetworkSuccess<T, E>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(E error) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E error)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkSuccess<T, E> value) success,
    required TResult Function(_NetworkFailure<T, E> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkSuccess<T, E> value)? success,
    TResult Function(_NetworkFailure<T, E> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkSuccess<T, E> value)? success,
    TResult Function(_NetworkFailure<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NetworkSuccess<T, E extends Exception>
    implements NetworkResult<T, E> {
  const factory _NetworkSuccess(T data) = _$_NetworkSuccess<T, E>;

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NetworkSuccessCopyWith<T, E, _NetworkSuccess<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NetworkFailureCopyWith<T, E extends Exception, $Res> {
  factory _$NetworkFailureCopyWith(_NetworkFailure<T, E> value,
          $Res Function(_NetworkFailure<T, E>) then) =
      __$NetworkFailureCopyWithImpl<T, E, $Res>;
  $Res call({E error});
}

/// @nodoc
class __$NetworkFailureCopyWithImpl<T, E extends Exception, $Res>
    extends _$NetworkResultCopyWithImpl<T, E, $Res>
    implements _$NetworkFailureCopyWith<T, E, $Res> {
  __$NetworkFailureCopyWithImpl(
      _NetworkFailure<T, E> _value, $Res Function(_NetworkFailure<T, E>) _then)
      : super(_value, (v) => _then(v as _NetworkFailure<T, E>));

  @override
  _NetworkFailure<T, E> get _value => super._value as _NetworkFailure<T, E>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_NetworkFailure<T, E>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc

class _$_NetworkFailure<T, E extends Exception>
    implements _NetworkFailure<T, E> {
  const _$_NetworkFailure(this.error);

  @override
  final E error;

  @override
  String toString() {
    return 'NetworkResult<$T, $E>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NetworkFailure<T, E> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$NetworkFailureCopyWith<T, E, _NetworkFailure<T, E>> get copyWith =>
      __$NetworkFailureCopyWithImpl<T, E, _NetworkFailure<T, E>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(E error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(E error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkSuccess<T, E> value) success,
    required TResult Function(_NetworkFailure<T, E> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkSuccess<T, E> value)? success,
    TResult Function(_NetworkFailure<T, E> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkSuccess<T, E> value)? success,
    TResult Function(_NetworkFailure<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailure<T, E extends Exception>
    implements NetworkResult<T, E> {
  const factory _NetworkFailure(E error) = _$_NetworkFailure<T, E>;

  E get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NetworkFailureCopyWith<T, E, _NetworkFailure<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
