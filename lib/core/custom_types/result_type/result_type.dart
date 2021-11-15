import '../custom_failure/custom_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_type.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T data) = _Success;
  const factory Result.failure(CustomFailure failure) = _Failure;
}
