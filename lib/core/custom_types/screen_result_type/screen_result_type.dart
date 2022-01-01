
import 'package:freezed_annotation/freezed_annotation.dart';

part 'screen_result_type.freezed.dart';

@freezed
class ScreenResult<T> with _$ScreenResult<T> {
  const factory ScreenResult.completed(T data) = _Completed<T>;
  const factory ScreenResult.failed(String failureMessage) = _Failed;
  const factory ScreenResult.loading() = _Loading;
  const factory ScreenResult.initial() = _Initial;
}
