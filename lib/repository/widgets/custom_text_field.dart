import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double mWidth;
  final double mHeight;
  final TextEditingController controller;
  final String hinText;
  final TextInputType textInputType;
  final IconData? suffixIcon;
  final bool obscureText;
  const CustomTextField({
    super.key,
    this.mWidth = 300,
    this.mHeight = 50,
    required this.controller,
    required this.hinText,
    this.suffixIcon,
    required this.textInputType,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mWidth,
      height: mHeight,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: BorderSide(color: Colors.black),
          ),
          hintText: hinText,
          suffixIcon: Icon(suffixIcon),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: BorderSide(color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
