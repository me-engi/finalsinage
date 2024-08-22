import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onTour;
  final VoidCallback onLater;

  ActionButtons({required this.onTour, required this.onLater});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: onTour,
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF167DB7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Get a Tour',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        OutlinedButton(
          onPressed: onLater,
          style: OutlinedButton.styleFrom(
            side: BorderSide(width: 1.04, color: Color(0xFF167DB7)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Maybe Later',
              style: TextStyle(
                color: Color(0xFF167DB7),
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
