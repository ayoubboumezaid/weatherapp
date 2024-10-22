import 'package:dartz/dartz.dart';
import 'package:weatherapp/core/errors/faillure.dart';
import 'package:weatherapp/core/params/params.dart';
import 'package:weatherapp/features/weather/domain/entities/currentweather_entity.dart';
import 'package:weatherapp/features/weather/domain/repositories/weather_repository.dart';

class GetWeather {
  final WeatherRepository repository;

  GetWeather({required this.repository});

Future<Either<Failure,CurrentWeatherEntity>> call( {required WeatherParams params,}
    ){
  return repository.getWeather(params: params);
}
}