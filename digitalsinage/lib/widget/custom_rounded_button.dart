import 'package:digitalsinage/constants/constant_color.dart';
import 'package:digitalsinage/constants/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {super.key,
      required this.press,
      required this.text,
      this.width,
      this.style,
      this.color,
      this.height = 40});
  final VoidCallback? press;
  final String text;
  final color;
  final width;
  final TextStyle? style;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width ?? 360.w,
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? ConstColors.buttonColor,
          //side: const BorderSide(color: ConstColors.purple),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 0),
        ),
        child: FittedBox(
          child: Text(
            text,
            style: style ?? getTextTheme().displayLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}