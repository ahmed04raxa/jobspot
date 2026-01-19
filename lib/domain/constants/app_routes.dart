import 'package:flutter/cupertino.dart';
import 'package:jobspot/repository/screens/bottomnavigation/bottom_navigation_screen.dart';
import 'package:jobspot/repository/screens/forgotpassword/forgot_password.dart';
import 'package:jobspot/repository/screens/home/home_screen.dart';
import 'package:jobspot/repository/screens/login/login_screen.dart';
import 'package:jobspot/repository/screens/onboarding/on_boarding_screen.dart';
import 'package:jobspot/repository/screens/signup/sign_up_screen.dart';
import 'package:jobspot/repository/screens/splash/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = "/splash";
  static const String onBoardingScreen = "/onBoarding";
  static const String homeScreen = "/home";
  static const String loginScreen = "/login";
  static const String signUpScreen = "/signup";
  static const String forgotPasswordScreen = "/forgotPassword";
  static const String bottomNavigationScreen = "/bottomNavigation";

  static Map<String, Widget Function(BuildContext)> getRoutes() => {
    splashScreen: (context) => SplashScreen(),
    onBoardingScreen: (context) => OnBoardingScreen(),
    homeScreen: (context) => HomeScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    forgotPasswordScreen: (context) => ForgotPassword(),
    bottomNavigationScreen: (context) => BottomNavigationScreen(),
  };
}
