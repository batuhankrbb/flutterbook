import 'package:dio/dio.dart';
import 'package:flutter_book/core/utils/logger.dart';

import '../contracts/base_network_model.dart';

import 'network_connectivity_checker.dart';
import 'network_decoder.dart';
import 'network_requestor.dart';

class NetworkExecuter {
  NetworkExecuter._();

  final _debugMode = false;

  Future<K?> call<T extends BaseNetworkModel, K>(
      {required RequestOptions options, required T responseType}) async {
    if (await NetworkConnectivityChecker.shared.status) {
      try {
        var response =
            await NetworkRequestor.shared.sendRequest(options: options);
        var decodedResponse = NetworkDecoder.shared
            .decode<T, K>(response: response, responseType: responseType);
        return decodedResponse;
      } on DioError catch (dioError) {
        if (_debugMode) {
          LogHelper.shared.debugPrint("Dio Error $dioError");
        }
      } on TypeError catch (e) {
        LogHelper.shared.debugPrint("Type Error $e");
      }
    } else {
     LogHelper.shared.debugPrint("No Internet Connection ");
    }
  }
}
