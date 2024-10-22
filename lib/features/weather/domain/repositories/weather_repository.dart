import 'package:dartz/dartz.dart';
import 'package:weatherapp/core/errors/faillure.dart';
import 'package:weatherapp/core/params/params.dart';
import 'package:weatherapp/features/weather/domain/entities/currentweather_entity.dart';

abstract class WeatherRepository {
 Future <Either<Failure,CurrentWeatherEntity>> getWeather( {required WeatherParams params});
}