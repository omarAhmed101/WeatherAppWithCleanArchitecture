import 'package:weather_clean/weather/domain/repository/base_weather_repository.dart';

import '../entities/weather.dart';

class GetWeatherByCityName{

  late final BaseWeatherRepository repository;
  GetWeatherByCityName(this.repository);

  Future<Weather>excute(String cityName)async{
     return await repository.GetWeatherByCityName(cityName);
  }
}