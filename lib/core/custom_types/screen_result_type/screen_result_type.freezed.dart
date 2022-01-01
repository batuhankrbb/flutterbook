// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'screen_result_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScreenResultTearOff {
  const _$ScreenResultTearOff();

  _Completed<T> completed<T>(T data) {
    return _Completed<T>(
      data,
    );
  }

  _Failed<T> failed<T>(String failureMessage) {
    return _Failed<T>(
      failureMessage,
    );
  }

  _Loading<T> loading<T>() {
    return _Loading<T>();
  }

  _Initial<T> initial<T>() {
    return _Initial<T>();
  }
}

/// @nodoc
const $ScreenResult = _$ScreenResultTearOff();

/// @nodoc
mixin _$ScreenResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) completed,
    required TResult Function(String failureMessage) failed,
    required TResult Function() loading,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? completed,
    TResult Function(String failureMessage)? failed,
    TResult Function()? loading,
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? completed,
    TResult Function(String failureMessage)? failed,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed<T> value) completed,
    required TResult Function(_Failed<T> value) failed,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Initial<T> value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Failed<T> value)? failed,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Failed<T> value)? failed,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenResultCopyWith<T, $Res> {
  factory $ScreenResultCopyWith(
          ScreenResult<T> value, $Res Function(ScreenResult<T>) then) =
      _$ScreenResultCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ScreenResultCopyWithImpl<T, $Res>
    implements $ScreenResultCopyWith<T, $Res> {
  _$ScreenResultCopyWithImpl(this._value, this._then);

  final ScreenResult<T> _value;
  // ignore: unused_field
  final $Res Function(ScreenResult<T>) _then;
}

/// @nodoc
abstract class _$CompletedCopyWith<T, $Res> {
  factory _$CompletedCopyWith(
          _Completed<T> value, $Res Function(_Completed<T>) then) =
      __$CompletedCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class __$CompletedCopyWithImpl<T, $Res>
    extends _$ScreenResultCopyWithImpl<T, $Res>
    implements _$CompletedCopyWith<T, $Res> {
  __$CompletedCopyWithImpl(
      _Completed<T> _value, $Res Function(_Completed<T>) _then)
      : super(_value, (v) => _then(v as _Completed<T>));

  @override
  _Completed<T> get _value => super._value as _Completed<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Completed<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Completed<T> implements _Completed<T> {
  const _$_Completed(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ScreenResult<$T>.completed(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Completed<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$CompletedCopyWith<T, _Completed<T>> get copyWith =>
      __$CompletedCopyWithImpl<T, _Completed<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) completed,
    required TResult Function(String failureMessage) failed,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return completed(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? completed,
    TResult Function(String failureMessage)? failed,
    TResult Function()? loading,
    TResult Function()? initial,
  }) {
    return completed?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? completed,
    TResult Function(String failureMessage)? failed,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed<T> value) completed,
    required TResult Function(_Failed<T> value) failed,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Initial<T> value) initial,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Failed<T> value)? failed,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Failed<T> value)? failed,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed<T> implements ScreenResult<T> {
  const factory _Completed(T data) = _$_Completed<T>;

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CompletedCopyWith<T, _Completed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<T, $Res> {
  factory _$FailedCopyWith(_Failed<T> value, $Res Function(_Failed<T>) then) =
      __$FailedCopyWithImpl<T, $Res>;
  $Res call({String failureMessage});
}

/// @nodoc
class __$FailedCopyWithImpl<T, $Res> extends _$ScreenResultCopyWithImpl<T, $Res>
    implements _$FailedCopyWith<T, $Res> {
  __$FailedCopyWithImpl(_Failed<T> _value, $Res Function(_Failed<T>) _then)
      : super(_value, (v) => _then(v as _Failed<T>));

  @override
  _Failed<T> get _value => super._value as _Failed<T>;

  @override
  $Res call({
    Object? failureMessage = freezed,
  }) {
    return _then(_Failed<T>(
      failureMessage == freezed
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failed<T> implements _Failed<T> {
  const _$_Failed(this.failureMessage);

  @override
  final String failureMessage;

  @override
  String toString() {
    return 'ScreenResult<$T>.failed(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failed<T> &&
            (identical(other.failureMessage, failureMessage) ||
                const DeepCollectionEquality()
                    .equals(other.failureMessage, failureMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureMessage);

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<T, _Failed<T>> get copyWith =>
      __$FailedCopyWithImpl<T, _Failed<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) completed,
    required TResult Function(String failureMessage) failed,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return failed(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? completed,
    TResult Function(String failureMessage)? failed,
    TResult Function()? loading,
    TResult Function()? initial,
  }) {
    return failed?.call(failureMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? completed,
    TResult Function(String failureMessage)? failed,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failureMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed<T> value) completed,
    required TResult Function(_Failed<T> value) failed,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Initial<T> value) initial,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Failed<T> value)? failed,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Failed<T> value)? failed,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed<T> implements ScreenResult<T> {
  const factory _Failed(String failureMessage) = _$_Failed<T>;

  String get failureMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailedCopyWith<T, _Failed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<T, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T> value, $Res Function(_Loading<T>) then) =
      __$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<T, $Res>
    extends _$ScreenResultCopyWithImpl<T, $Res>
    implements _$LoadingCopyWith<T, $Res> {
  __$LoadingCopyWithImpl(_Loading<T> _value, $Res Function(_Loading<T>) _then)
      : super(_value, (v) => _then(v as _Loading<T>));

  @override
  _Loading<T> get _value => super._value as _Loading<T>;
}

/// @nodoc

class _$_Loading<T> implements _Loading<T> {
  const _$_Loading();

  @override
  String toString() {
    return 'ScreenResult<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) completed,
    required TResult Function(String failureMessage) failed,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? completed,
    TResult Function(String failureMessage)? failed,
    TResult Function()? loading,
    TResult Function()? initial,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? completed,
    TResult Function(String failureMessage)? failed,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed<T> value) completed,
    required TResult Function(_Failed<T> value) failed,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Initial<T> value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Failed<T> value)? failed,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Failed<T> value)? failed,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements ScreenResult<T> {
  const factory _Loading() = _$_Loading<T>;
}

/// @nodoc
abstract class _$InitialCopyWith<T, $Res> {
  factory _$InitialCopyWith(
          _Initial<T> value, $Res Function(_Initial<T>) then) =
      __$InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<T, $Res>
    extends _$ScreenResultCopyWithImpl<T, $Res>
    implements _$InitialCopyWith<T, $Res> {
  __$InitialCopyWithImpl(_Initial<T> _value, $Res Function(_Initial<T>) _then)
      : super(_value, (v) => _then(v as _Initial<T>));

  @override
  _Initial<T> get _value => super._value as _Initial<T>;
}

/// @nodoc

class _$_Initial<T> implements _Initial<T> {
  const _$_Initial();

  @override
  String toString() {
    return 'ScreenResult<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) completed,
    required TResult Function(String failureMessage) failed,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? completed,
    TResult Function(String failureMessage)? failed,
    TResult Function()? loading,
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? completed,
    TResult Function(String failureMessage)? failed,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Completed<T> value) completed,
    required TResult Function(_Failed<T> value) failed,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Initial<T> value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Failed<T> value)? failed,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Completed<T> value)? completed,
    TResult Function(_Failed<T> value)? failed,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Initial<T> value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements ScreenResult<T> {
  const factory _Initial() = _$_Initial<T>;
}
