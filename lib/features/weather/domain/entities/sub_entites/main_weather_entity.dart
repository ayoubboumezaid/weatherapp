class MainWeatherEntity {
  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int humidity;
  final int sealevel;
  final int grndlevel;

  MainWeatherEntity({required this.temp,required this.grndlevel, required this.feelsLike, required this.tempMin, required this.tempMax, required this.pressure, required this.humidity,required this.sealevel, });
}