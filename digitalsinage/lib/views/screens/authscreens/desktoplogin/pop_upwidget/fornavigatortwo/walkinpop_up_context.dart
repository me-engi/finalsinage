import 'package:digitalsinage/views/screens/authscreens/desktoplogin/pop_upwidget/fornavigatorone/button_widget.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/pop_upwidget/fornavigatortwo/walkin_header.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/pop_upwidget/fornavigatortwo/walkinbody.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WalkInPopUpContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1050,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WalkInHeader(),
          const SizedBox(height: 60),
          WalkInBody(),
          const SizedBox(height: 10),
          
            
              // Custom button at the bottom
              CustomButtonnav(
                text: 'Next',
                color: Color(0xFF167DB7),
                borderColor: Color(0xFF167DB7),
                onPressed: () {
                  
                  // Define what happens when the button is pressed
                  print('Next button pressed');
                },
              ),
        ],
      ),
    );
  }
}
