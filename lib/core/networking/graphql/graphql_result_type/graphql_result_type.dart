import 'package:freezed_annotation/freezed_annotation.dart';

part 'graphql_result_type.freezed.dart';

@freezed
class GraphQLResult<T, E extends Exception> with _$GraphQLResult<T, E> {
  const factory GraphQLResult.success(T data) = _GraphQLSuccess;
  const factory GraphQLResult.failure(E error) = _GraphQLFailure;
}