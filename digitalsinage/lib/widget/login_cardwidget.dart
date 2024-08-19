import 'package:flutter/material.dart';

class LoginCardWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Widget? child;

  const LoginCardWidget({
    Key? key,
    this.width = 475.0,
    this.height = 620.0,
    this.color = const Color(0xFF2D3142),
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.05,
            color: Colors.white.withOpacity(0.52),
          ),
          borderRadius: BorderRadius.circular(48.49),
        ),
      ),
      child: child, // Add the child widget here
    );
  }
}
