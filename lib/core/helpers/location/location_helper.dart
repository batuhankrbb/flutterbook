import '../../custom_types/result_type/result_type.dart';
import 'package:geolocator/geolocator.dart';

import 'geo_coder_helper.dart';

class LocationHelper {
  LocationHelper._();

  static var shared = LocationHelper._();

  Future<Result<Position>> getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Result.failure("Location services are disabled.");
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Result.failure("Location permissions are denied");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      await Geolocator.openLocationSettings();
      return Result.failure(
              "Location permissions are permanently denied, we cannot request permissions.");
    }

    var position = await Geolocator.getCurrentPosition();
    return Result.success(position);
  }

  Future<Result<LocationInfo>> getLocationInfo() async {
    var location = await getLocation();
    return location.when(success: (data) async {
      var placeMark = await GeoCoderHelper.shared
          .getMostAccuratePlackeMarkFromCoordinates(
              lat: data.latitude, long: data.longitude);
      if (placeMark != null) {
        var commaAdmin = placeMark.administrativeArea != null ? "," : "";
        var commaSubAdmin = placeMark.subAdministrativeArea != null ? "," : "";
        var info = LocationInfo(
            lat: data.latitude,
            long: data.longitude,
            name:
                "${placeMark.administrativeArea}$commaAdmin${placeMark.subAdministrativeArea}$commaSubAdmin${placeMark.isoCountryCode}");
        return Result.success(info);
      } else {
        return Result.failure("Something went wrong.");
      }
    }, failure: (failure) {
      return Result.failure(failure);
    });
  }
}

class LocationInfo {
  final num lat;
  final num long;
  final String name;

  LocationInfo({required this.lat, required this.long, required this.name});
}
