import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';

class WeatheEvent extends Equatable {
  const WeatheEvent();
  @override
  List<Object> get props => [];
}

final class FetchWeather extends WeatheEvent {
  const FetchWeather(this.position);
  final Position position;
  @override
  List<Object> get props => [position];
}
