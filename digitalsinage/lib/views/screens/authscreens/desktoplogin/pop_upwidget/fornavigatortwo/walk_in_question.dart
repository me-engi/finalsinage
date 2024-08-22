import 'package:digitalsinage/views/screens/authscreens/desktoplogin/pop_upwidget/fornavigatortwo/walk_in_optionsection.dart';
import 'package:flutter/material.dart';

class WalkInQuestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WalkInQuestionHeader(text: 'Where did you hear about us?'),
        const SizedBox(height: 12),
        WalkInOptions(),
      ],
    );
  }
}

class WalkInQuestionHeader extends StatelessWidget {
  final String text;

  const WalkInQuestionHeader({required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFF167DB7),
          fontSize: 20,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          height: 0,
        ),
      ),
    );
  }
}
