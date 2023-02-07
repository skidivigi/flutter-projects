import 'package:dart_weather_and_geocords_find_api/getters.dart';
import 'package:dart_weather_and_geocords_find_api/pages/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

TextEditingController latContorller = TextEditingController();
TextEditingController lonContorller = TextEditingController();
String apiKey = '823bdb05ae9675f762848e5f2c7d29f3';
// String lat = latContorller.text;
// String lon = lonContorller.text;

class _InputPageState extends State<InputPage> {
  Widget _input(Icon icon, String hint, TextEditingController controller) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          suffixIconColor: Colors.white,
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black45,
          ),
          hintText: hint,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.black87, width: 3),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.black45, width: 1),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: IconTheme(
              data: IconThemeData(color: Colors.black),
              child: icon,
            ),
          ),
        ),
      ),
      // decoration: BoxDecoration(
      //     color: Colors.white24,
      //     borderRadius: BorderRadius.all(Radius.circular(40))),
    );
  }

  Widget _button() {
    return ElevatedButton(
      onPressed: (() {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DataWeather()));
      }),
      child: const Text(
        'Get weather',
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue.withOpacity(0.7),
        padding: EdgeInsets.all(10),
        side: BorderSide(color: Colors.white.withOpacity(0.8), width: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<WeatherProvider>();
    return Scaffold(
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _input(Icon(Icons.map), 'Input lat cords', latContorller),
                SizedBox(
                  height: 25,
                ),
                _input(
                    Icon(Icons.zoom_in_map), 'Input lon cords', lonContorller),
                SizedBox(
                  height: 60,
                ),
                _button(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
