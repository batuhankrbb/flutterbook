import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_type.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T data) = _Success;
  const factory Result.failure(String failureMessage) = _Failure;
}
