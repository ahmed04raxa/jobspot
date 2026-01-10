import 'package:flutter/cupertino.dart';
import 'package:jobspot/repository/screens/home/home_screen.dart';
import 'package:jobspot/repository/screens/onboarding/on_boarding_screen.dart';
import 'package:jobspot/repository/screens/splash/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = "/splash";
  static const String onBoardingScreen = "/onBoarding";
  static const String homeScreen = "/home";

  static Map<String, Widget Function(BuildContext)> getRoutes() => {
    splashScreen: (context) => SplashScreen(),
    onBoardingScreen: (context) => OnBoardingScreen(),
    homeScreen: (context) => HomeScreen(),
  };
}
