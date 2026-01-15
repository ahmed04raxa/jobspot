import 'package:flutter/material.dart';
import 'package:jobspot/domain/constants/app_colors.dart';
import 'package:jobspot/repository/widgets/custom_btn.dart';
import 'package:jobspot/repository/widgets/ui_helper.dart';
import '../../widgets/custom_text_field.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.customText(
                text: "Forgot Password?",
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "To reset your password, you need your email or mobile \nnumber that can be authenticated",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Color(0XFF0D0140)),
          ),
          SizedBox(height: 30),
          UiHelper.customImage(imgUrl: "forgot.png"),
          SizedBox(height: 30),
          CustomTextField(
            controller: emailController,
            mWidth: 317,
            mHeight: 50,
            hinText: "Email",
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(height: 10),
          CustomBtn(
            text: "Reset Password",
            onTap: () {},
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            bgColor: AppColors.blueColor,
            mWidth: 317,
            mHeight: 50,
          ),
          SizedBox(height: 10),
          CustomBtn(
            text: "Back To Login",
            onTap: () {
              Navigator.pop(context);
            },
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            bgColor: AppColors.purpleColor,
            mWidth: 317,
            mHeight: 50,
          ),
        ],
      ),
    );
  }
}
