import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  final String title;
  final String subtitle;

  WelcomeText({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xFFF0FBFF),
            fontSize: 28,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          subtitle,
          style: TextStyle(
            color: Color(0xFFB5B7C0),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
