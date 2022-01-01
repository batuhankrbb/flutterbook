import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkConnectivityChecker {
  NetworkConnectivityChecker._();

  static Future<bool> get status async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    } else {
      return true;
    }
  }
}
