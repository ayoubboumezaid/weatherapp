import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/core/res/app_colors.dart';
import 'package:weatherapp/features/weather/presentation/cubit/weather_cubit.dart';
import 'package:weatherapp/features/weather/presentation/screens/home_screen.dart';

class WeatherSearchBar extends StatefulWidget {
  const WeatherSearchBar({super.key});

  @override
  State<WeatherSearchBar> createState() => _WeatherSearchBarState();
}

class _WeatherSearchBarState extends State<WeatherSearchBar> {
  final TextEditingController _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.grey, borderRadius: BorderRadius.circular(25)),
      child: TextField(
        controller: _cityController,
        decoration: InputDecoration(
          labelText: 'Search for a city',
          border: InputBorder.none,
          prefixIcon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              final cityName = _cityController.text.trim();
              if (cityName.isNotEmpty) {
                context.read<WeatherCubit>().EatherFailureOrWeather(cityName);

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
