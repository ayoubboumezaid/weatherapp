import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weatherapp/core/res/app_colors.dart';
import 'package:weatherapp/core/ui/widgets/custom_text.dart';
import 'package:weatherapp/features/weather/domain/entities/currentweather_entity.dart';

class WeatherDetailsWidget extends StatelessWidget {
  final CurrentWeatherEntity currentWeather;

  const WeatherDetailsWidget({super.key, required this.currentWeather});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(30.0),
      ),
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildWeatherInfoColumn(
              Icons.wb_sunny, "UV INDEX", "0", Colors.yellow),
          _buildDivider(),
          _buildWeatherInfoColumn(Icons.air, "WIND",
              '${currentWeather.wind.speed}m/s', Colors.white),
          _buildDivider(),
          _buildWeatherInfoColumn(Icons.opacity, "HUMIDITY",
              '${currentWeather.main.humidity}%', Colors.blue),
        ],
      ),
    );
  }

  Widget _buildWeatherInfoColumn(
      IconData icon, String label, String value, Color iconColor) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Icon(icon, color: iconColor),
            4.horizontalSpace,
            CustomText(label, color: Colors.white70),
          ],
        ),
       8.verticalSpace,
        CustomText(
          value,
          color: Colors.white,
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 50.h,
      child: VerticalDivider(
        color: Colors.white24,
        thickness: 1,
      ),
    );
  }
}
