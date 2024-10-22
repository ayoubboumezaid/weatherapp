import 'package:dartz/dartz.dart';
import 'package:weatherapp/core/connection/network_info.dart';
import 'package:weatherapp/core/errors/exceptions.dart';
import 'package:weatherapp/core/errors/faillure.dart';
import 'package:weatherapp/core/params/params.dart';
import 'package:weatherapp/features/weather/data/datasources/weather_local_data_source.dart';
import 'package:weatherapp/features/weather/data/datasources/weather_remote_data_source.dart';
import 'package:weatherapp/features/weather/domain/entities/currentweather_entity.dart';
import 'package:weatherapp/features/weather/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl  extends WeatherRepository{
  @override
  final NetworkInfo networkInfo;
  final WeatherRemoteDataSource remoteDataSource;
  final WeatherLocalDataSource localDataSource;
  WeatherRepositoryImpl( {required this.networkInfo,required this.remoteDataSource,required this.localDataSource});
  Future<Either<Failure, CurrentWeatherEntity>> getWeather({required WeatherParams params}) async{
    if (await networkInfo !=null) {
      try {
  final  remoteWeather= await remoteDataSource.GetWeather(params);
   localDataSource.cacheWeather(remoteWeather);
  return Right(remoteWeather);
} on ServerException catch (e) {
  return  Left(Failure(errMessage: e.errorModel.errorMessage));
}
    }else{
      try {
  final localWeather= await localDataSource.getLastWeather();
  return Right(localWeather);
} on ServerException catch (e) {
  return Left(Failure(errMessage: e.errorModel.errorMessage));
}
    }
    
  
  }
}