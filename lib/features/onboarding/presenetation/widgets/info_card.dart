import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weatherapp/core/ui/widgets/custom_text.dart';
import 'package:weatherapp/features/onboarding/presenetation/widgets/circular_button.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 30.0.h),
          CustomText(
            'Weather App',
           
              fontSize: 35.0.sp,
              fontWeight: FontWeight.bold,
           
          ),
          SizedBox(height: 16.h),
          CustomText(
            'Discover the weather in your city and plan your day correctly',
            textAlign: TextAlign.center,
          
              fontSize: 23.0.sp,
              color: Colors.black,
            
          ),
          SizedBox(height: 35.sp),

          CircularButton(onPressed: () {  },)
        ],
      ),
    );
  }
}
