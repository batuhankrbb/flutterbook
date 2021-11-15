import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_result_type.freezed.dart';

@freezed
class NetworkResult<T, E extends Exception> with _$NetworkResult<T, E> {
  const factory NetworkResult.success(T data) = _NetworkSuccess;
  const factory NetworkResult.failure(E error) = _NetworkFailure;
}
