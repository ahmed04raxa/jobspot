import 'package:flutter/material.dart';

import '../../../domain/constants/app_colors.dart';
import '../../../domain/constants/app_routes.dart';
import '../../widgets/custom_btn.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/ui_helper.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(
                  text: "Create an Account",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing \nelit, sed do eiusmod tempor",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Color(0XFF0D0140)),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  controller: fullNameController,
                  mWidth: 317,
                  mHeight: 50,
                  hinText: "Full Name",
                  textInputType: TextInputType.name,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  controller: emailController,
                  mWidth: 317,
                  mHeight: 50,
                  hinText: "Email",
                  textInputType: TextInputType.emailAddress,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  controller: passwordController,
                  mWidth: 317,
                  mHeight: 50,
                  hinText: "Password",
                  textInputType: TextInputType.text,
                  suffixIcon: Icons.remove_red_eye,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBtn(
                  text: "LOGIN",
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.homeScreen);
                  },
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  bgColor: AppColors.blueColor,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBtn(
                  iconPath: "assets/images/google.png",
                  text: "Sign Up With Google",
                  onTap: () {},
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  bgColor: AppColors.blueColor,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, AppRoutes.loginScreen);
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.yellowColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
