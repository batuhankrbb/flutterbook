import '../contracts/base_sqflite_model.dart';

class SqfliteDecoder {
  SqfliteDecoder._();

  static var shared = SqfliteDecoder._();

  K decode<T extends BaseSqfliteModel, K>(
      {required dynamic response, required T responseType}) {
    try {
      if (response is List) {
        var list = response as List;
        var dataList = List<T>.from(
            list.map((item) => responseType.fromJson(item)).toList()) as K;
        return dataList;
      } else {
        var data = responseType.fromJson(response.data) as K;
        return data;
      }
    } on TypeError {
      rethrow;
    }
  }
}
