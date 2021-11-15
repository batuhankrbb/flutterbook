import 'dart:io';


class AdmobIDHelper {
  AdmobIDHelper._();

  static final shared = AdmobIDHelper._();

  String get homeScreenBannerID {
    return _returnWithChecking(iosID: "IosID", androidID: "AndroidID");
  }

  String _returnWithChecking(
      {required String iosID, required String androidID}) {
    if (Platform.isIOS || Platform.isMacOS) {
      return iosID;
    } else {
      return androidID;
    }
  }
}
