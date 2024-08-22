import 'package:digitalsinage/views/screens/authscreens/desktoplogin/pop_upwidget/fornavigatortwo/walk_in_question.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/pop_upwidget/fornavigatortwo/walkin_detail_scetion.dart';
import 'package:flutter/material.dart';

class WalkInBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1050,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 5, child: WalkInQuestionSection()),
          const SizedBox(width: 28),
          Expanded(flex: 3, child: WalkInDetailsSection()),
        ],
      ),
    );
  }
}
