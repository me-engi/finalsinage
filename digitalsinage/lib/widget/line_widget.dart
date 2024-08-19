import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  final double width;
  final double height;

  // Constructor with named parameters and default values
  const Line({
    Key? key,
    required this.width ,
    required this.height 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width,
          height: height,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: height, // Set border width to match the height
                strokeAlign: BorderSide.strokeAlignCenter,
                color: Color(0xFFF0EDFF),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
