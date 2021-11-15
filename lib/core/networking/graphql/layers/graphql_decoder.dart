import '../../../utils/logger.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../base_contract/base_graphql_network_model.dart';

class GraphQLDecoder {
  GraphQLDecoder._();
  static final shared = GraphQLDecoder._();

  K decode<T extends BaseGraphQlNetworkModel, K>(
      {required QueryResult result, required T responseType}) {
    try {
      if (result.data == null) {
        LogHelper.shared.debugPrint("result.data is null in GraphQLDecoder");
      }
      LogHelper.shared.debugPrint("data = ${result.data}");
      if (result.data is List) {
        var list = result.data as List;
        var dataList = List<T>.from(
            list.map((item) => responseType.fromJson(item)).toList()) as K;
        return dataList;
      } else {
        var data = responseType.fromJson(result.data ?? {}) as K;
        return data;
      }
    } on TypeError catch (e) {
      rethrow;
    }
  }
}
