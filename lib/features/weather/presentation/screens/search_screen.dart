import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weatherapp/core/ui/widgets/custom_text.dart';
import 'package:weatherapp/features/weather/presentation/widgets/settings_button.dart';
import 'package:weatherapp/features/weather/presentation/widgets/weather_search_bar.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    'Weather',
                    fontSize: 35.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                 SettingsButton(),
                 
                ],
              ),
              SizedBox(height: 20.h,),
              WeatherSearchBar(),
             

            ],
          ),
        ),
      ),
    );
  }
}
