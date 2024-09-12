import 'package:flutter/material.dart';

class getWeatherIcon extends StatelessWidget {
  const getWeatherIcon({
    super.key,
    required this.code,
  });

  final int code;

  @override
  Widget build(BuildContext context) {
    switch (code) {
      case >= 200 && < 300:
        return Image.asset(
          'assets/images/1.png',
          height: 50,
        );
      case >= 300 && < 400:
        return Image.asset('assets/images/2.png');
      case >= 500 && < 600:
        return Image.asset(
          'assets/images/3.png',
          height: 250,
        );
      case >= 600 && < 700:
        return Image.asset(
          'assets/images/4.png',
          height: 250,
        );
      case >= 700 && < 800:
        return Image.asset(
          'assets/images/5.png',
          height: 250,
        );
      case == 800:
        return Image.asset(
          'assets/images/6.png',
          height: 250,
        );
      case > 800 && <= 804:
        return Image.asset(
          'assets/images/7.png',
          height: 250,
        );
      default:
        return Image.asset(
          'assets/images/7.png',
          height: 250,
        );
    }
  }
}
