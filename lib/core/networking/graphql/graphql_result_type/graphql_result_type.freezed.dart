// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'graphql_result_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GraphQLResultTearOff {
  const _$GraphQLResultTearOff();

  _GraphQLSuccess<T, E> success<T, E extends Exception>(T data) {
    return _GraphQLSuccess<T, E>(
      data,
    );
  }

  _GraphQLFailure<T, E> failure<T, E extends Exception>(E error) {
    return _GraphQLFailure<T, E>(
      error,
    );
  }
}

/// @nodoc
const $GraphQLResult = _$GraphQLResultTearOff();

/// @nodoc
mixin _$GraphQLResult<T, E extends Exception> {
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
    required TResult Function(_GraphQLSuccess<T, E> value) success,
    required TResult Function(_GraphQLFailure<T, E> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GraphQLSuccess<T, E> value)? success,
    TResult Function(_GraphQLFailure<T, E> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GraphQLSuccess<T, E> value)? success,
    TResult Function(_GraphQLFailure<T, E> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphQLResultCopyWith<T, E extends Exception, $Res> {
  factory $GraphQLResultCopyWith(
          GraphQLResult<T, E> value, $Res Function(GraphQLResult<T, E>) then) =
      _$GraphQLResultCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class _$GraphQLResultCopyWithImpl<T, E extends Exception, $Res>
    implements $GraphQLResultCopyWith<T, E, $Res> {
  _$GraphQLResultCopyWithImpl(this._value, this._then);

  final GraphQLResult<T, E> _value;
  // ignore: unused_field
  final $Res Function(GraphQLResult<T, E>) _then;
}

/// @nodoc
abstract class _$GraphQLSuccessCopyWith<T, E extends Exception, $Res> {
  factory _$GraphQLSuccessCopyWith(_GraphQLSuccess<T, E> value,
          $Res Function(_GraphQLSuccess<T, E>) then) =
      __$GraphQLSuccessCopyWithImpl<T, E, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$GraphQLSuccessCopyWithImpl<T, E extends Exception, $Res>
    extends _$GraphQLResultCopyWithImpl<T, E, $Res>
    implements _$GraphQLSuccessCopyWith<T, E, $Res> {
  __$GraphQLSuccessCopyWithImpl(
      _GraphQLSuccess<T, E> _value, $Res Function(_GraphQLSuccess<T, E>) _then)
      : super(_value, (v) => _then(v as _GraphQLSuccess<T, E>));

  @override
  _GraphQLSuccess<T, E> get _value => super._value as _GraphQLSuccess<T, E>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_GraphQLSuccess<T, E>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_GraphQLSuccess<T, E extends Exception>
    implements _GraphQLSuccess<T, E> {
  const _$_GraphQLSuccess(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'GraphQLResult<$T, $E>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GraphQLSuccess<T, E> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$GraphQLSuccessCopyWith<T, E, _GraphQLSuccess<T, E>> get copyWith =>
      __$GraphQLSuccessCopyWithImpl<T, E, _GraphQLSuccess<T, E>>(
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
    required TResult Function(_GraphQLSuccess<T, E> value) success,
    required TResult Function(_GraphQLFailure<T, E> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GraphQLSuccess<T, E> value)? success,
    TResult Function(_GraphQLFailure<T, E> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GraphQLSuccess<T, E> value)? success,
    TResult Function(_GraphQLFailure<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _GraphQLSuccess<T, E extends Exception>
    implements GraphQLResult<T, E> {
  const factory _GraphQLSuccess(T data) = _$_GraphQLSuccess<T, E>;

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GraphQLSuccessCopyWith<T, E, _GraphQLSuccess<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GraphQLFailureCopyWith<T, E extends Exception, $Res> {
  factory _$GraphQLFailureCopyWith(_GraphQLFailure<T, E> value,
          $Res Function(_GraphQLFailure<T, E>) then) =
      __$GraphQLFailureCopyWithImpl<T, E, $Res>;
  $Res call({E error});
}

/// @nodoc
class __$GraphQLFailureCopyWithImpl<T, E extends Exception, $Res>
    extends _$GraphQLResultCopyWithImpl<T, E, $Res>
    implements _$GraphQLFailureCopyWith<T, E, $Res> {
  __$GraphQLFailureCopyWithImpl(
      _GraphQLFailure<T, E> _value, $Res Function(_GraphQLFailure<T, E>) _then)
      : super(_value, (v) => _then(v as _GraphQLFailure<T, E>));

  @override
  _GraphQLFailure<T, E> get _value => super._value as _GraphQLFailure<T, E>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_GraphQLFailure<T, E>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc

class _$_GraphQLFailure<T, E extends Exception>
    implements _GraphQLFailure<T, E> {
  const _$_GraphQLFailure(this.error);

  @override
  final E error;

  @override
  String toString() {
    return 'GraphQLResult<$T, $E>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GraphQLFailure<T, E> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$GraphQLFailureCopyWith<T, E, _GraphQLFailure<T, E>> get copyWith =>
      __$GraphQLFailureCopyWithImpl<T, E, _GraphQLFailure<T, E>>(
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
    required TResult Function(_GraphQLSuccess<T, E> value) success,
    required TResult Function(_GraphQLFailure<T, E> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GraphQLSuccess<T, E> value)? success,
    TResult Function(_GraphQLFailure<T, E> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GraphQLSuccess<T, E> value)? success,
    TResult Function(_GraphQLFailure<T, E> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _GraphQLFailure<T, E extends Exception>
    implements GraphQLResult<T, E> {
  const factory _GraphQLFailure(E error) = _$_GraphQLFailure<T, E>;

  E get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GraphQLFailureCopyWith<T, E, _GraphQLFailure<T, E>> get copyWith =>
      throw _privateConstructorUsedError;
}
