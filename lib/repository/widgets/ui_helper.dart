import 'package:flutter/material.dart';

class UiHelper {
  static customImage({required String imgUrl, BoxFit? boxFit}) {
    return Image.asset("assets/images/$imgUrl", fit: boxFit);
  }

  static customText({
    required String text,
    required double fontSize,
    Color color = Colors.black,
    FontWeight? fontWeight,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
