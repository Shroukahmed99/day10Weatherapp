import 'package:equatable/equatable.dart';
import 'package:weather/weather.dart';

class WeatherState extends Equatable {
  const WeatherState();
  @override
  List<Object> get props => [];
}

final class WeatherInitial extends WeatherState {}

final class WeatherLodaing extends WeatherState {}

final class WeatherFailure extends WeatherState {}

final class WeatherSucsses extends WeatherState {
  const WeatherSucsses(this.weather);
  final Weather weather;
  @override
  List<Object> get props => [Weather];
}
