import 'package:geolocator/geolocator.dart';

Future<Position> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error('Location service is disable');
  }

  
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location Permission is denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error(' Location Permission is permitly denied');
  }

  return await Geolocator.getCurrentPosition();
}
