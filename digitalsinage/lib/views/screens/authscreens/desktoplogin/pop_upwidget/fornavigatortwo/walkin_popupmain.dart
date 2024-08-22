import 'package:digitalsinage/views/screens/authscreens/desktoplogin/pop_upwidget/fornavigatortwo/walkinpop_up_context.dart';
import 'package:flutter/material.dart';

class WalkInPopUptwowidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 1146,
          height: 599,
          padding: const EdgeInsets.all(40),
          decoration: ShapeDecoration(
            color: Color(0xFF262626),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x19167DB7),
                blurRadius: 50,
                offset: Offset(0, 20),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WalkInPopUpContent(),
            ],
          ),
        ),
      ],
    );
  }
}
