import 'package:flutter/material.dart';
import 'package:jobspot/domain/constants/app_colors.dart';
import 'package:jobspot/domain/constants/app_routes.dart';
import 'package:jobspot/repository/widgets/ui_helper.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  UiHelper.customText(
                    text: "Jobspot",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [UiHelper.customImage(imgUrl: "obboarding.png")],
              ),
              SizedBox(height: 30),
              UiHelper.customText(
                text: "Find Your",
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              UiHelper.customText(
                text: "Dream Job",
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: AppColors.yellowColor,
              ),
              UiHelper.customText(
                text: "Here!",
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              UiHelper.customText(
                text:
                    "Explore all the most exciting job roles base\non your interest and study major.",
                fontSize: 14,
                color: AppColors.lightBlack,
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                        context,
                        AppRoutes.loginScreen,
                      );
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.blueColor,
                      ),
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
