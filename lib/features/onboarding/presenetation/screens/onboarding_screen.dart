import 'package:flutter/material.dart';
import 'package:weatherapp/core/res/app_colors.dart';
import 'package:weatherapp/core/res/assets_manager.dart';
import 'package:weatherapp/features/onboarding/presenetation/widgets/info_card.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.primaryPurple,
              AppColors.lightBlue,
              AppColors.yellow
            ],
          ),
        ),
        child: Stack(
          children: [Positioned(top:180,left: 100,child: Image.asset(AssetsManager.OnboardingImage,height: 250,width: 250,)),
            Positioned(bottom: 10, left: 20, right: 20, child: InfoCard())
          ],
        ),
      ),
    );
  }
}
