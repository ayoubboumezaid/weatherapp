import 'package:weatherapp/core/databases/api/end_points.dart';
import 'package:weatherapp/features/weather/domain/entities/sub_entites/wind_entity.dart';

class WindModel extends WindEntity {
  WindModel({required super.speed, required super.deg});
  factory WindModel.fromJson(Map<String, dynamic> json) {
    return WindModel(speed: json[ApiKey.speed], deg: json[ApiKey.deg]);
  }
  Map<String, dynamic> toJson() {
    return {
      ApiKey.speed: speed,
      ApiKey.deg: deg,
    };
  }
}
