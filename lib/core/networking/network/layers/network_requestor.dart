import 'dart:io';

import 'package:dio/dio.dart';
import '../contracts/client_generator.dart';

class NetworkRequestor {
  NetworkRequestor._();

  static var shared = NetworkRequestor._();

  final _dioClient = Dio();

  Future<Response<dynamic>> sendRequest(
      {required ClientGenerator client, RequestOptions? options}) {
    var myOptions = (options != null)
        ? options
        : RequestOptions(path: client.path, data: client.body);
    return _dioClient.fetch(
      myOptions.copyWith(
        baseUrl: client.baseURL,
        method: client.method,
        path: client.path,
        queryParameters: client.queryParameters,
        sendTimeout: client.sendTimeout,
        receiveTimeout: client.receiveTimeOut,
        validateStatus: (statusCode) => (statusCode! >= HttpStatus.ok &&
            statusCode <= HttpStatus.multipleChoices),
      ),
    );
  }
}
