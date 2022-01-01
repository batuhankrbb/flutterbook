import 'dart:io';

import 'package:dio/dio.dart';

class NetworkRequestor {
  NetworkRequestor._();

  static Future<Response<dynamic>> sendRequest({required RequestOptions options}) {
    return Dio().fetch(options);
  }
}
