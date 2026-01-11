import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double mWidth;
  final double mHeight;
  final Color bgColor;
  final Color color;
  final double fontSize;
  final FontWeight? fontWeight;
  final String? iconPath;
  const CustomBtn({
    super.key,
    required this.text,
    required this.onTap,
    this.mWidth = 300,
    this.mHeight = 50,
    this.bgColor = Colors.blueAccent,
    this.color = Colors.black,
    required this.fontSize,
    this.fontWeight,
    this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: mWidth,
        height: mHeight,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(11),
        ),
        child: iconPath != null
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(iconPath!, width: 50, height: 50),
                    Expanded(
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: fontWeight,
                          color: color,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    color: color,
                  ),
                ),
              ),
      ),
    );
  }
}
