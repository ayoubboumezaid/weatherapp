import 'package:weatherapp/core/databases/api/api_consumer.dart';
import 'package:weatherapp/core/databases/api/end_points.dart';
import 'package:weatherapp/core/params/params.dart';
import 'package:weatherapp/features/weather/data/models/currentwearther_model.dart';

class WeatherRemoteDataSource {
  final ApiConsumer api;

  WeatherRemoteDataSource({required this.api});
  Future<CurrentWeatherModel> GetWeather(WeatherParams params) async {
    final response = await api.get(
        "${EndPoints.baserUrl}/${EndPoints.weather}?q=${params.cityName}&appid=${EndPoints.appid}");
    return CurrentWeatherModel.fromJson(response);
  }
}
