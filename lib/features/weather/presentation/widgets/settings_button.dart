import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weatherapp/core/res/app_colors.dart';

class SettingsButton extends StatefulWidget {
  const SettingsButton({super.key});

  @override
  State<SettingsButton> createState() => _SettingsButtonState();
}

class _SettingsButtonState extends State<SettingsButton> {
  @override
  Widget build(BuildContext context) {
    return   CircleAvatar(
                    radius: 20.r, 
                    backgroundColor: AppColors.grey,
                    child: Row(
                      mainAxisSize: MainAxisSize.min, 
                      children: [
                        Container(
                          width: 5.w, 
                          height: 5.h, 
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 3.w), 
                        Container(
                          width: 5.w,
                          height: 5.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 3.w), 
                        Container(
                          width: 5.w,
                          height: 5.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  );
  }
}