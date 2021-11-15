import '../base_contract/base_graphql_client.dart';
import '../base_contract/base_graphql_network_model.dart';
import '../error/custom_graphql_error.dart';
import '../graphql_result_type/graphql_result_type.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'graphql_connectivity_checker.dart';
import 'graphql_decoder.dart';
import 'graphql_requestor.dart';

class GraphQLExecuter {
  GraphQLExecuter._();

  static final shared = GraphQLExecuter._();

  Future<GraphQLResult<K, CustomGraphQLError>>
      execute<T extends BaseGraphQlNetworkModel, K>(
          {required BaseGraphQLClient baseGraphQLClient,
          required T responseType}) async {
    if (await GraphQLConnectivityChecker.shared.status) {
      try {
        var queryResult = await GraphQLRequestor.shared
            .sendRequest(baseClient: baseGraphQLClient);
        var decodedData = GraphQLDecoder.shared
            .decode<T, K>(result: queryResult, responseType: responseType);
        return GraphQLResult.success(decodedData);
      } on TypeError catch (e) {
        return GraphQLResult.failure(CustomGraphQLError.type(error: e.toString()));
      } on OperationException catch (e) {
         return GraphQLResult.failure(CustomGraphQLError.request(error: e));
      } catch (e) {
        return GraphQLResult.failure(CustomGraphQLError.unknown(error: e.toString()));
      }
    } else {
      return const GraphQLResult.failure(CustomGraphQLError.connectivity());
    }
  }
}