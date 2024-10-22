import 'package:weatherapp/core/databases/api/end_points.dart';
import 'package:weatherapp/features/weather/domain/entities/sub_entites/sys_entity.dart';

class SysModel extends SysEntity {
  SysModel(
      {required super.type,
      required super.id,
      required super.country,
      required super.sunrise,
      required super.sunset});
  factory SysModel.fromJson(Map<String, dynamic> json) {
    return SysModel(
        type: json[ApiKey.type],
        id: json[ApiKey.id],
        country: json[ApiKey.country],
        sunrise: json[ApiKey.sunrise],
        sunset: json[ApiKey.sunset]);
  }
   Map<String, dynamic> toJson() {
    return {
     ApiKey.id: id,
      ApiKey.type: type,
      ApiKey.country : country,
      ApiKey.sunrise : sunrise,
        ApiKey.sunset : sunset

      
    };
  }
}
