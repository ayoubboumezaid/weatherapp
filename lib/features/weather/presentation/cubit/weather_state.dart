part of 'weather_cubit.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}
final class GetWeatherSuccessfully extends WeatherState{
  final CurrentWeatherEntity currentWeather;

  GetWeatherSuccessfully({required this.currentWeather});
}
final class GetWeatherLoading extends WeatherState {}
final class GetweatherFailure extends WeatherState{
  final String errMessage;

  GetweatherFailure({required this.errMessage});
}
