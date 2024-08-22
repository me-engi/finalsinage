import 'dart:ui';


import 'package:digitalsinage/views/screens/authscreens/desktoplogin/pop_upwidget/fornavigatortwo/walkinpopupthree_widget.dart';
import 'package:flutter/material.dart';

class WalkInPopUthreeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;

          return Stack(
            children: [
              // Background Image with Blur Effect
              Positioned.fill(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/images/backgroundimage.png', // Replace with your image URL or asset
                      fit: BoxFit.cover,
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              // Centered Popup Content with Padding
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: isMobile ? 80.0 : 150.0, // Adjust vertical padding for mobile and desktop
                  horizontal: 20.0, // Optional horizontal padding
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: WalkInPopUpthree(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
