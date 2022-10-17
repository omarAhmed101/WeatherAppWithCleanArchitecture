// ignore_for_file: non_constant_identifier_names

import '../entities/weather.dart';

abstract class BaseWeatherRepository{
 Future<Weather> GetWeatherByCityName(String cityName);
}