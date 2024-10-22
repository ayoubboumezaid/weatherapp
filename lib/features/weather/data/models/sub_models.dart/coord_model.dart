import 'package:weatherapp/core/databases/api/end_points.dart';
import 'package:weatherapp/features/weather/domain/entities/sub_entites/coord_entity.dart';

class CoordModel extends CoordEntity {
  CoordModel({required super.lon, required super.lat});
  factory CoordModel.fromJson(Map<String, dynamic> json) {
    return CoordModel(lon: json[ApiKey.lon], lat: json[ApiKey.lat]);
  }
  Map<String, dynamic> toJson() {
    return {
      ApiKey.lon: lon,
      ApiKey.lat: lat,
    };
  }
}
