import 'package:flutter/material.dart';
import 'package:weatherapp/widget/sizeBox_custom.dart';

class InfoWeather extends StatelessWidget {
  const InfoWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 35, left: 50),
            child: Row(
              children: [
                Icon(
                  Icons.location_pin,
                  size: 20,
                ),
                Text(
                  ': EG',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, right: 170),
            child: Text(
              'Ismailia',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Image.asset(
            'assets/images/6.png',
            width: 250,
          ),
          const Text(
            '28º C',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Text(
            'CLEAR',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Text(
            'Tharsday 08.8:44PM',
            style: TextStyle(
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
                // const Spacer(flex: 1),
                const Column(
                  children: [
                    Text(
                      'sunrise',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '5:13 AM',
                      style: TextStyle(
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
                // const Spacer(flex: 1),
                const Column(
                  children: [
                    Text(
                      'sunset',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '9:32 PM',
                      style: TextStyle(
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
          const sizedBoxCustom(),
          const Divider(
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
          const sizedBoxCustom(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/13.png',
                  height: 50,
                  width: 50,
                ),
                // const Spacer(flex: 1),
                const Column(
                  children: [
                    Text(
                      'TempMax',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '28º C',
                      style: TextStyle(
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
                // const Spacer(flex: 1),
                const Column(
                  children: [
                    Text(
                      'TempMin',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '28º C',
                      style: TextStyle(
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
      ),
    );
  }
}
