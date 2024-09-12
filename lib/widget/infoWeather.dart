import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/bloc/weather_bloc.dart';
import 'package:weatherapp/bloc/weather_state.dart';
import 'package:weatherapp/data/git_weather_icons.dart';

class InfoWeather extends StatelessWidget {
  const InfoWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.orange,
              Color.fromARGB(255, 13, 9, 51),
            ],
          ),
        ),
        child: SafeArea(
          child: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) {
              if (state is WeatherSucsses) {
                String sunrise = state.weather.sunrise?.toString() ?? '';
                String sunset = state.weather.sunset?.toString() ?? '';

                DateTime? sunriseTime = DateTime.tryParse(sunrise);
                DateTime? sunsetTime = DateTime.tryParse(sunset);
                DateTime? dateTime = state.weather.date;
                String formattedDateTime = dateTime != null
                    ? DateFormat('EEEE dd. h:mm a').format(dateTime)
                    : 'N/A'; //

                String formattedSunrise = sunriseTime != null
                    ? DateFormat('h:mm a').format(sunriseTime)
                    : 'N/A';

                String formattedSunset = sunsetTime != null
                    ? DateFormat('h:mm a').format(sunsetTime)
                    : 'N/A';
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, right: 230),
                      child: Text(
                        '📍 : ${state.weather.country}',
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 170),
                      child: Text(
                        " ${state.weather.areaName}",
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    getWeatherIcon(code: state.weather.weatherConditionCode!),
                    Text(
                      "${state.weather.temperature!.celsius?.round()}º C",
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "${state.weather.weatherMain?.toUpperCase()}",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      " ${formattedDateTime}",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/6.png',
                            height: 50,
                            width: 50,
                          ),
                          Column(
                            children: [
                              const Text(
                                'Sunrise',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                " ${formattedSunrise}",
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(flex: 1),
                          Image.asset(
                            'assets/images/12.png',
                            height: 50,
                            width: 50,
                          ),
                          Column(
                            children: [
                              const Text(
                                'Sunset',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                " ${formattedSunset}",
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/13.png',
                            height: 50,
                            width: 50,
                          ),
                          Column(
                            children: [
                              const Text(
                                'TempMax',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "${state.weather.tempMax!.celsius?.round()}º C",
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(flex: 1),
                          Image.asset(
                            'assets/images/14.png',
                            height: 50,
                            width: 50,
                          ),
                          Column(
                            children: [
                              const Text(
                                'TempMin',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "${state.weather.tempMin!.celsius?.round()}º C",
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
