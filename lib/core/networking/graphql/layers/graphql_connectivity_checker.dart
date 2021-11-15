import 'package:connectivity_plus/connectivity_plus.dart';

class GraphQLConnectivityChecker {
  GraphQLConnectivityChecker._();

  static var shared = GraphQLConnectivityChecker._();

 Future<bool> get status async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    } else {
      return true;
    }
  }
}