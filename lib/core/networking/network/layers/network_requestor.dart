import 'dart:io';

import 'package:dio/dio.dart';

class NetworkRequestor {
  NetworkRequestor._();

  static var shared = NetworkRequestor._();

  final _dioClient = Dio();

  Future<Response<dynamic>> sendRequest({required RequestOptions options}) {
    return _dioClient.fetch(options);
  }
}
