import 'package:weatherapp/core/databases/api/end_points.dart';
import 'package:weatherapp/features/weather/domain/entities/sub_entites/weather_entity.dart';

class WeatherModel extends WeatherEntity {
  WeatherModel(
      {required super.id,
      required super.main,
      required super.description,
      required super.icon});
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
        id: json[ApiKey.id],
        main: json[ApiKey.main],
        description: json[ApiKey.description],
        icon: json[ApiKey.icon]);
  }
  Map<String, dynamic> toJson() {
    return {
     ApiKey.id: id,
      ApiKey.main: main,
      ApiKey.description : description,
     ApiKey.icon : icon

      
    };
  }
}
