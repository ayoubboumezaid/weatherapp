import 'package:weatherapp/core/databases/api/end_points.dart';
import 'package:weatherapp/features/weather/domain/entities/sub_entites/main_weather_entity.dart';

class MainWeatherModel extends MainWeatherEntity {
  MainWeatherModel(
      {required super.temp,
      required super.feelsLike,
      required super.tempMin,
      required super.tempMax,
      required super.pressure,
      required super.humidity,
      required super.sealevel, required super.grndlevel});
  factory MainWeatherModel.fromJson(Map<String, dynamic> json) {
    return MainWeatherModel(grndlevel: json[ApiKey.grndlevel],
        sealevel: json[ApiKey.sealevel],
        temp: json[ApiKey.temp],
        feelsLike: json[ApiKey.feelsLike],
        tempMin: json[ApiKey.tempMin],
        tempMax: json[ApiKey.tempMax],
        pressure: json[ApiKey.pressure],
        humidity: json[ApiKey.humidity], );
        
  }
  Map<String, dynamic> toJson() {
    return {
      ApiKey.temp: temp,
      ApiKey.feelsLike: feelsLike,
      ApiKey.tempMin: tempMin,
      ApiKey.tempMax: tempMax,
      ApiKey.pressure: pressure,
      ApiKey.humidity: humidity,
      ApiKey.sealevel: sealevel,
      ApiKey.grndlevel: grndlevel,
    };
  }
}
