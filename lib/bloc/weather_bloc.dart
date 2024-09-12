import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/weather.dart';
import 'package:weatherapp/bloc/weather_event.dart';
import 'package:weatherapp/bloc/weather_state.dart';
import 'package:weatherapp/const.dart';

class WeatherBloc extends Bloc<WeatheEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<FetchWeather>((event, emit) async {
      try {
        WeatherFactory wf = WeatherFactory(ApiKey, language: Language.ENGLISH);
        Weather weather = await wf.currentWeatherByLocation(
            event.position.latitude, event.position.longitude);
        emit(WeatherSucsses(weather));
        print(weather);
        // print("Current temperature in Cairo: ${weather.temperature}");
      } catch (e) {
        emit(WeatherFailure());
      }
      ;
    });
  }
}
