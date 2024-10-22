import 'package:bloc/bloc.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:weatherapp/core/connection/network_info.dart';
import 'package:weatherapp/core/databases/api/dio_consumer.dart';
import 'package:weatherapp/core/databases/cache/cache_helper.dart';
import 'package:weatherapp/core/params/params.dart';
import 'package:weatherapp/features/weather/data/datasources/weather_local_data_source.dart';
import 'package:weatherapp/features/weather/data/datasources/weather_remote_data_source.dart';
import 'package:weatherapp/features/weather/data/repositories/weather_repository_impl.dart';
import 'package:weatherapp/features/weather/domain/entities/currentweather_entity.dart';
import 'package:weatherapp/features/weather/domain/usecases/get_weather.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());
  EatherFailureOrWeather(String cityName) async{
emit(GetWeatherLoading());
   final failureOrWeather=await GetWeather(
            repository: WeatherRepositoryImpl(
                networkInfo: NetworkInfoImpl(DataConnectionChecker()),
                remoteDataSource:
                    WeatherRemoteDataSource(api: DioConsumer(dio: Dio())),
                localDataSource: WeatherLocalDataSource(cache: CacheHelper())))
        .call(params: WeatherParams(cityName: cityName));
        failureOrWeather.fold(
          (failure)=> emit(GetweatherFailure(errMessage: failure.errMessage)),
          (currentWeather)=>emit(GetWeatherSuccessfully(currentWeather: currentWeather))
      );
  }
  
}
