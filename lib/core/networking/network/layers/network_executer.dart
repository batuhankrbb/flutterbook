import 'package:dio/dio.dart';

import '../contracts/base_network_model.dart';
import '../contracts/client_generator.dart';
import '../error/network_error.dart';
import '../network_result_type/network_result_type.dart';

import 'network_connectivity_checker.dart';
import 'network_decoder.dart';
import 'network_requestor.dart';

class NetworkExecuter {
  NetworkExecuter._();

  static var shared = NetworkExecuter._();

  final _debugMode = false;

  Future<NetworkResult<K, NetworkError>> execute<T extends BaseNetworkModel, K>(
      {required ClientGenerator client,
      required T responseType,
      RequestOptions? options}) async {
    if (_debugMode) print(client);
    if (await NetworkConnectivityChecker.shared.status) {
      try {
        var response =
            await NetworkRequestor.shared.sendRequest(client: client);
        var decodedResponse = NetworkDecoder.shared
            .decode<T, K>(response: response, responseType: responseType);
        return NetworkResult.success(decodedResponse);
      } on DioError catch (dioError) {
        //* NETWORK ERROR
        if (_debugMode)
          print("$client => ${NetworkError.request(error: dioError)}");
        return NetworkResult.failure(NetworkError.request(error: dioError));
      } on TypeError catch (e) {
        //* DECODING ERROR
        if (_debugMode)
          print("$client => ${NetworkError.type(error: e.toString())}");
        return NetworkResult.failure(NetworkError.type(error: e.toString()));
      }
    } else {
      //* INTERNET ERROR
      if (_debugMode)
        print(NetworkError.connectivity(message: 'No Internet Connection'));
      return const NetworkResult.failure(
          NetworkError.connectivity(message: 'No Internet Connection'));
    }
  }
}
