import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;
  getCurrentPosition() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (err) {
      print(err);
    }
  }
}
