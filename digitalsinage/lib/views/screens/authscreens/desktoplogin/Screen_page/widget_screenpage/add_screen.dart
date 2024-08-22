import 'package:flutter/material.dart';

class AddScreenButton extends StatelessWidget {
  final VoidCallback onPressed;

  AddScreenButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF2D3142),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xFF209A75), width: 1),
      ),
      child: Center(
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            '+ Add Screen',
            style: TextStyle(
              color: Color(0xFF209A75),
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
