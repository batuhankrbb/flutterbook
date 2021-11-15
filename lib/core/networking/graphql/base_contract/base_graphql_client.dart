import 'graphql_method.dart';

abstract class BaseGraphQLClient {
  const BaseGraphQLClient();
  String get baseUrl;
  GraphQLMethod get method;
  String get document;
  Map<String, String>? get header;
}
