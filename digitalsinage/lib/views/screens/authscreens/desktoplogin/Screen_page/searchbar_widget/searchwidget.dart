import 'package:digitalsinage/constants/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchField extends StatelessWidget {
  final double width;
  final double height;
  final Widget icon; // Change to Widget to allow any type of icon
  final String text;

  const CustomSearchField({
    Key? key,
    required this.width,
    required this.height,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width.w, // Responsive width
          height: height.h, // Responsive height
          padding: EdgeInsets.all(20.w), // Responsive padding
          decoration: ShapeDecoration(
            color: ConstColors.lightBlack, // Use the constant color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r), // Responsive border radius
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 18.sp, // Responsive font size
                    ), 
                  ),
                ),
              ),
              SizedBox(width: 20.w), // Responsive spacing
              Container(
                width: 24.w, // Responsive width for the icon container
                height: 24.h, // Responsive height for the icon container
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: icon, // Use the passed icon directly
              ),
            ],
          ),
        ),
      ],
    );
  }
}
