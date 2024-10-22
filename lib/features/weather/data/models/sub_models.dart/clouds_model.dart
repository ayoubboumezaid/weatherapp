import 'package:weatherapp/core/databases/api/end_points.dart';
import 'package:weatherapp/features/weather/domain/entities/sub_entites/clouds_entity.dart';

class CloudsModel extends CloudsEntity{
  CloudsModel({required super.all});
 factory CloudsModel.fromJson(Map<String, dynamic> json){
  return  CloudsModel(all: json[ApiKey.all]);

 }
 Map<String, dynamic> toJson() {
    return {
      ApiKey.all: all,
   
    };
  }
} 