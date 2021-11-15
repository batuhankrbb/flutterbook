import 'package:geocoding/geocoding.dart';

class GeoCoderHelper {
  GeoCoderHelper._();

  static var shared = GeoCoderHelper._();

  Future<Placemark?> getMostAccuratePlackeMarkFromCoordinates(
      {required double lat, required double long}) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(lat, long);
      return placemarks.first;
    } catch (e) {
      return null;
    }
  }
}
