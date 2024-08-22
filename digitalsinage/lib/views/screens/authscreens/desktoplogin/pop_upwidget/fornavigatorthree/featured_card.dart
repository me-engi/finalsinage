import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  final String title;
  final Widget icon;

  FeatureCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 76, vertical: 36),
      decoration: ShapeDecoration(
        color: Color(0xFF2D3142),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          const SizedBox(height: 18.83),
          Text(
            title,
            style: TextStyle(
              color: Color(0xFF209A75),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
