import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weatherapp/core/res/assets_manager.dart';
import 'package:weatherapp/core/ui/widgets/custom_text.dart';
import 'package:weatherapp/features/weather/domain/entities/currentweather_entity.dart';
import 'package:weatherapp/features/weather/presentation/widgets/weather_details_widget.dart';

class WeatherData extends StatelessWidget {
  WeatherData({super.key, required this.currentWeather});
  final CurrentWeatherEntity currentWeather;

  @override
  Widget build(BuildContext context) {
    int tempCelsius = (currentWeather.main.temp - 273.15).toInt();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 100.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
              child: CustomText(
            color: Colors.white,
            '${currentWeather.name}',
            fontSize: 35.sp,
          )),
          Image.asset(
            AssetsManager.OnboardingImage,
            width: 250.w,
          ),
          16.verticalSpace,
          CustomText(
            ' $tempCelsius°',
            color: Colors.white,
            fontSize: 70.sp,
          ),
          CustomText(' ${currentWeather.weather[0].description}',
              color: Colors.white, fontSize: 28.sp),
          25.verticalSpace,
          WeatherDetailsWidget(
            currentWeather: currentWeather,
          )
        ],
      ),
    );
  }
}
