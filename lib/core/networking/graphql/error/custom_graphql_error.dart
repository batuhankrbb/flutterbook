import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

part 'custom_graphql_error.freezed.dart';

@freezed
class CustomGraphQLError with _$CustomGraphQLError implements Exception{

  const CustomGraphQLError._() : super();

  const factory CustomGraphQLError.request({required OperationException error}) = _RequestError;
  const factory CustomGraphQLError.type({String? error}) = _DecodingError;
  const factory CustomGraphQLError.connectivity({String? error}) = _ConnectivityError;
    const factory CustomGraphQLError.unknown({String? error}) = _UnknownError;

  String? get localizedErrorMessage {
    return when<String?>(
      type: (error) => error,
      connectivity: (message) => message,
      request: (OperationException error) => error.graphqlErrors.map((e) => e.toString()).toList().toString(),
      unknown: (message) => message
    );
  }
}