import 'package:flutter/material.dart';
import 'package:weather_clean/weather/data/data_source/remote_datasource.dart';
import 'package:weather_clean/weather/data/repository/weather_repository.dart';
import 'package:weather_clean/weather/domain/repository/base_weather_repository.dart';

import 'weather/domain/use_case/get_weather_by_city_name.dart';

void main() async{

   RemoteDataSource remoteDataSource=RemoteDataSource();
    BaseWeatherRepository baseWeatherRepository=WeatherRepository(remoteDataSource);
  await GetWeatherByCityName(baseWeatherRepository).excute('egypt');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    );
  }
}

