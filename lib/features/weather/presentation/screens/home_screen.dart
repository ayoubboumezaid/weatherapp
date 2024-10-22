 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/core/ui/widgets/custom_text.dart';
import 'package:weatherapp/features/weather/presentation/cubit/weather_cubit.dart';
import 'package:weatherapp/features/weather/presentation/widgets/weather_data.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});
   

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
     

   @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, WeatherState>(
      
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(backgroundColor: Colors.deepPurple,
          body: state is GetWeatherSuccessfully
           
              ? WeatherData(currentWeather: state.currentWeather,)
              : state is GetweatherFailure
                  ? Center(child: CustomText(state.errMessage))
                  : const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
