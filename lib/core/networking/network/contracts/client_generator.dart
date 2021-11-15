abstract class ClientGenerator{
  const ClientGenerator();
  String get path;
  String get method;
  String get baseURL;
  dynamic get body;
  Map<String,dynamic>? get queryParameters;
  Map<String,dynamic> get header;
  int? get sendTimeout => 30000;
  int? get receiveTimeOut => 30000;
}