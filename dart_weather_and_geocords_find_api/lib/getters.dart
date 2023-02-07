import 'package:dart_weather_and_geocords_find_api/models.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherModel? model;

  getWeather(
      {required String apiKey,
      required String lat,
      required String lon}) async {
    Dio dio = Dio();
    final getWeather = await dio.get(
      'https://api.openweathermap.org/data/2.5/weather?',
      queryParameters: {
        'lat': lat,
        'lon': lon,
        'appid': apiKey,
      },
    );
    notifyListeners();
    return model = WeatherModel.fromJson(getWeather.data);
  }
}
