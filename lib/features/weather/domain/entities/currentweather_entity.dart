import 'package:weatherapp/features/weather/domain/entities/sub_entites/clouds_entity.dart';
import 'package:weatherapp/features/weather/domain/entities/sub_entites/main_weather_entity.dart';
import 'package:weatherapp/features/weather/domain/entities/sub_entites/weather_entity.dart';
import 'package:weatherapp/features/weather/domain/entities/sub_entites/wind_entity.dart';


class CurrentWeatherEntity {
 
  final List<WeatherEntity> weather;
  final MainWeatherEntity main;
  final CloudsEntity clouds;
    final WindEntity wind;
  final String name;
  final int timezone;
  CurrentWeatherEntity(  {
    required this.wind,
    required this.timezone,
    required this.weather,
    required this.main,
    required this.clouds,
    required this.name,

  });
}