import 'dart:convert';
import 'package:weatherapp/core/databases/cache/cache_helper.dart';
import 'package:weatherapp/core/errors/exceptions.dart';
import 'package:weatherapp/features/weather/data/models/currentwearther_model.dart';

class WeatherLocalDataSource {
  final CacheHelper cache;
  final String key="cacheWeather";
  WeatherLocalDataSource({required this.cache});

  cacheWeather(CurrentWeatherModel?weatherTocache){
    if (weatherTocache !=null) {
      cache.saveData(key: key, value: json.encode(weatherTocache.toJson()));
      
    }
    else{
      throw CacheExeption(errorMessage: "No internet Connection");
    }

  }
 Future<CurrentWeatherModel> getLastWeather(){
final jsonString=  cache.getDataString(key: key);
if (jsonString != null) {
  return Future.value(CurrentWeatherModel.fromJson(json.decode(jsonString))) ;
  
}else{
  throw CacheExeption(errorMessage: "No Inernet Connection");
}
  }
}