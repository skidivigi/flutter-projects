import 'package:dart_weather_and_geocords_find_api/getters.dart';
import 'package:dart_weather_and_geocords_find_api/pages/input.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataWeather extends StatelessWidget {
  DataWeather({super.key});

  final style = const TextStyle(
      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20);

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<WeatherProvider>();
    final size = MediaQuery.of(context).size;
    vm.getWeather(
        apiKey: apiKey, lat: latContorller.text, lon: lonContorller.text);

    final textStyle =
        TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 16);

    Widget _textAndIconForm(IconData icon, String text) {
      return Column(
        children: [
          Text(
            text,
            style: TextStyle(
                color: Colors.black87.withOpacity(0.6),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Icon(
            icon,
            size: 40,
            color: Colors.black87.withOpacity(0.6),
          ),
        ],
      );
    }

    Widget _textShowing(String text) {
      return Text(
        text,
        style: TextStyle(
            color: Colors.white.withOpacity(0.57),
            fontWeight: FontWeight.bold,
            fontSize: 16),
      );
    }

    Widget _iconShowing(IconData icon) {
      return Icon(icon, color: Colors.white.withOpacity(0.57));
    }

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.blue.withOpacity(0.1),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 18, 54, 218),
                    Color.fromARGB(255, 86, 167, 233)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
          ),
          Positioned(
            top: size.height * 0.06,
            left: size.width * 0.15,
            right: size.width * 0.15,
            child: Text(
              '${vm.model?.name}',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Positioned(
            top: size.height * 0.15,
            left: size.width * 0.15,
            right: size.width * 0.15,
            child: Icon(
              Icons.cloud,
              color: Colors.white,
              size: 200,
            ),
          ),
          Positioned(
            top: size.height * 0.45,
            left: size.width * 0.30,
            // right: size.width * 0.25,
            child: Text(
              '${(vm.model?.main?.temp!.toInt())! - 273 ?? "Problems"} C*',
              style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: size.height * 0.55,
            left: size.width * 0.10,
            right: size.width * 0.10,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _textAndIconForm(Icons.snowing, 'Now'),
                    _textAndIconForm(Icons.cloud, '13'),
                    _textAndIconForm(Icons.radar, '14'),
                    _textAndIconForm(Icons.snowshoeing, '15'),
                    _textAndIconForm(Icons.sunny, '16'),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.67,
            left: size.width * 0.15,
            right: size.width * 0.15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _textShowing('Friday'),
                    SizedBox(
                      height: 15,
                    ),
                    _textShowing('Saturday'),
                    SizedBox(
                      height: 15,
                    ),
                    _textShowing('Sunday'),
                    SizedBox(
                      height: 15,
                    ),
                    _textShowing('Monday'),
                  ],
                ),
                Column(
                  children: [
                    _iconShowing(Icons.cloud),
                    SizedBox(
                      height: 15,
                    ),
                    _iconShowing(Icons.sunny),
                    SizedBox(
                      height: 15,
                    ),
                    _iconShowing(Icons.storm),
                    SizedBox(
                      height: 15,
                    ),
                    _iconShowing(Icons.snowing),
                  ],
                ),
                Column(
                  children: [
                    Text(
                        '${(vm.model?.main?.tempMax!.toInt())! - 273}  ${(vm.model?.main?.tempMin!.toInt())! - 273}',
                        style: textStyle),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                        '${(vm.model?.main?.tempMax!.toInt())! - 273}  ${(vm.model?.main?.tempMin!.toInt())! - 273}',
                        style: textStyle),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                        '${(vm.model?.main?.tempMax!.toInt())! - 273}  ${(vm.model?.main?.tempMin!.toInt())! - 273}',
                        style: textStyle),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '${(vm.model?.main?.tempMax!.toInt())! - 273}  ${(vm.model?.main?.tempMin!.toInt())! - 273}',
                      style: textStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Positioned(
          //   left: size.width * 0.15,
          //   right: size.width * 0.15,
          //   top: size.height * 0.8,
          //   child: SingleChildScrollView(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Text(
          //           'Temp: ${(vm.model?.main?.temp) ?? "Problems"} C',
          //           style: style,
          //         ),
          //         Text(
          //             'Feels like: ${(vm.model?.main?.feelsLike) ?? "Problems"} C',
          //             style: style),
          //         Text('Wind: ${vm.model?.wind?.speed ?? "Problems"} m/s',
          //             style: style),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
