// ignore_for_file: non_constant_identifier_names, argument_type_not_assignable_to_error_handler, empty_catches

import 'package:dio/dio.dart';
import 'package:weather_clean/weather/core/utlls/constants.dart';

import '../model/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> GetWeatherByCity(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
   Future<WeatherModel?>GetWeatherByCity(String cityName) async {
    try {
      var dio = Dio();
      final response = await dio
          .get(
          '${Constants.baseUrl}/weather?q=$cityName&appid=${Constants.apiKey}');
      print(response.data);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
     return null;
    }
  }
}
