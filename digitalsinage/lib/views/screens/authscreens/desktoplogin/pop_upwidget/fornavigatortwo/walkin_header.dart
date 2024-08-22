import 'package:flutter/material.dart';

class WalkInHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Last step! This will only take a minute.',
            style: TextStyle(
              color: Color(0xFFF0FBFF),
              fontSize: screenWidth > 600 ? 28 : 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 1.2,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'When we know you better we can serve you better.',
            style: TextStyle(
              color: Color(0xFFB5B7C0),
              fontSize: screenWidth > 600 ? 16 : 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              letterSpacing: -0.16,
            ),
          ),
        ],
      ),
    );
  }
}
