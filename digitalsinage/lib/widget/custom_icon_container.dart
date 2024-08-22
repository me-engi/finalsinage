import 'package:flutter/material.dart';

class CustomIconContainer extends StatelessWidget {
  final Widget icon; // Accepts a Widget instead of IconData
  final Color containerColor;
  final double containerWidth;
  final double containerHeight;
  final VoidCallback? onTap;

  const CustomIconContainer({
    Key? key,
    required this.icon, // Change this to required Widget
    this.containerColor = const Color(0xFF262626),
    this.containerWidth = 44.0,
    this.containerHeight = 44.0,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        width: containerWidth,
        height: containerHeight,
        padding: const EdgeInsets.all(10),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: containerColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Center(
          child: icon, // Directly place the icon widget here
        ),
      ),
    );
  }
}
