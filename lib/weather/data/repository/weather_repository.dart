// ignore_for_file: non_constant_identifier_names

import 'package:weather_clean/weather/data/data_source/remote_datasource.dart';
import 'package:weather_clean/weather/domain/entities/weather.dart';
import 'package:weather_clean/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{
   final BaseRemoteDataSource baseRemoteDataSource;
   WeatherRepository(this.baseRemoteDataSource);
  @override
  Future<Weather> GetWeatherByCityName(String cityName)async {
   return (await baseRemoteDataSource.GetWeatherByCity( cityName))!;
  }

}