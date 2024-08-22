import 'package:flutter/material.dart';

class OvalBorderCheckbox extends StatelessWidget {
  final bool isSelected;
  final Color borderColor;
  final Color? fillColor;

  OvalBorderCheckbox({
    required this.isSelected,
    required this.borderColor,
    this.fillColor, required String optionText, required Null Function() onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 19.12,
      child: Stack(
        children: [
          Container(
            width: 20,
            height: 19.12,
            decoration: ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: borderColor,
                ),
              ),
            ),
          ),
          if (isSelected)
            Positioned(
              left: 4,
              top: 3.82,
              child: Container(
                width: 12,
                height: 11.47,
                decoration: ShapeDecoration(
                  color: fillColor ?? borderColor,
                  shape: OvalBorder(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
