import 'package:digitalsinage/views/screens/authscreens/desktoplogin/navigator_three_screen.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/pop_upwidget/fornavigatortwo/custom_button.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/pop_upwidget/fornavigatortwo/header_text.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/pop_upwidget/fornavigatortwo/intregetoptions_inquestionsection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Navigatortwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF262626),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;
          return Center(
            child: Padding(
              padding: EdgeInsets.all(isMobile ? 16.0 : 40.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderText(
                    title: 'Last step! This will only take a minute.',
                    subtitle: 'When we know you better we can serve you better.',
                  ),
                  const SizedBox(height: 40),
                  QuestionSection(
                    question: 'Where did you hear about us?',
                    options: [
                      'Search Engine',
                      'Social Media',
                      'Peer Referral',
                      'Google Advertisement',
                      'Blog Post',
                      'Other',
                    ],
                  ),
                  const SizedBox(height: 40),
                  CustomButtonnavtwo(
                    text: 'Next',
                    onPressed: () {
                      // Handle button press
                      Get.to(() => WalkInPopUthreeScreen());
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
