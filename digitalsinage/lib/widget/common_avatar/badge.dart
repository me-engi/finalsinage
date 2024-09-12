import 'package:flutter/material.dart';

class Badgee extends StatelessWidget {
  final double size;
  final Color color;

  const Badgee({
    Key? key,
    required this.size,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size / 2),
        ),
      ),
    );
  }
}
