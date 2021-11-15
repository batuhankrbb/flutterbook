import 'package:graphql_flutter/graphql_flutter.dart';

import '../base_contract/base_graphql_client.dart';
import '../base_contract/graphql_method.dart';

class GraphQLRequestor {
  GraphQLRequestor._();

  static var shared = GraphQLRequestor._();

  Future<QueryResult> sendRequest(
      {required BaseGraphQLClient baseClient}) async {
    var httpLink =
        HttpLink(baseClient.baseUrl, defaultHeaders: baseClient.header ?? {});
    var client = GraphQLClient(link: httpLink, cache: GraphQLCache());

    switch (baseClient.method) {
      case GraphQLMethod.mutation:
        return await client.mutate(
          MutationOptions(
            document: gql(baseClient.document),
          ),
        );
      case GraphQLMethod.query:
        return await client.query(
          QueryOptions(
            document: gql(baseClient.document),
          ),
        );
    }
  }
}