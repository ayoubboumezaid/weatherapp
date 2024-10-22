// current_weather_model.dart
import 'package:weatherapp/core/databases/api/end_points.dart';
import 'package:weatherapp/features/weather/data/models/sub_models.dart/clouds_model.dart';
import 'package:weatherapp/features/weather/data/models/sub_models.dart/coord_model.dart';
import 'package:weatherapp/features/weather/data/models/sub_models.dart/main_weather_model.dart';
import 'package:weatherapp/features/weather/data/models/sub_models.dart/sys_model.dart';
import 'package:weatherapp/features/weather/data/models/sub_models.dart/weather_model.dart';
import 'package:weatherapp/features/weather/data/models/sub_models.dart/wind_model.dart';
import 'package:weatherapp/features/weather/domain/entities/currentweather_entity.dart';

class CurrentWeatherModel extends CurrentWeatherEntity {
  final CoordModel coord;
  final String base;
  final int visibility;
  
  final int dt;
  final SysModel sys;
  final int id;
  final int cod;

  CurrentWeatherModel({
    required this.coord,
    required this.base,
    required this.visibility,
    required super.wind,
    required this.dt,
    required this.sys,
    required super.timezone,
    required this.id,
    required this.cod,
    required super.weather,
    required super.main,
    required super.clouds,
    required super.name,
  });

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherModel(
      coord: CoordModel.fromJson(json[ApiKey.coord]),
      base: json[ApiKey.base],
      visibility: json[ApiKey.visibility],
      wind: WindModel.fromJson(json[ApiKey.wind]),
      dt: json[ApiKey.dt],
      sys: SysModel.fromJson(json[ApiKey.sys]),
      timezone: json[ApiKey.timezone],
      id: json[ApiKey.id],
      cod: json[ApiKey.cod],
      weather: (json[ApiKey.weather] as List<dynamic>)
          .map((w) => WeatherModel.fromJson(w as Map<String, dynamic>))
          .toList(),
      main: MainWeatherModel.fromJson(json[ApiKey.main]),
      clouds: CloudsModel.fromJson(json[ApiKey.clouds]),
      name: json[ApiKey.name],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKey.coord: coord.toJson(),
      ApiKey.base: base,
      ApiKey.wind: wind,
      ApiKey.dt: dt,
      ApiKey.sys: sys.toJson(),
      ApiKey.timezone: timezone,
      ApiKey.id: id,
      ApiKey.cod: cod,
      ApiKey.weather: weather.map((w) => (w as WeatherModel).toJson()).toList(),
      ApiKey.visibility: visibility,
      ApiKey.main: (main as MainWeatherModel).toJson(),
      ApiKey.clouds: (clouds as CloudsModel).toJson(),
      ApiKey.name: name,
    };
  }
}
