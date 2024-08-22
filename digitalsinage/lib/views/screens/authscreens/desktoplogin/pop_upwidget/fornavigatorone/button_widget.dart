import 'package:flutter/material.dart';

class CustomButtonnav extends StatelessWidget {
  final String text;
  final Color color;
  final Color borderColor;
  final VoidCallback onPressed;

  const CustomButtonnav({
    required this.text,
    required this.color,
    required this.borderColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;
        final buttonWidth = isMobile ? constraints.maxWidth * 0.8 : 150.0; // Adjust width for mobile and desktop
        final buttonHeight = isMobile ? 40.0 : 48.0; // Adjust height for mobile and desktop
        final padding = isMobile ? 12.0 : 20.0; // Adjust padding for mobile and desktop

        return Container(
          width: buttonWidth,
          height: buttonHeight,
          padding: EdgeInsets.all(padding),
          decoration: ShapeDecoration(
            color: color,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.04, color: borderColor),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onPressed,
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isMobile ? 16 : 20, // Adjust font size for mobile and desktop
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0.05,
                    letterSpacing: -0.20,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
