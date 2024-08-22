import 'package:digitalsinage/views/screens/authscreens/desktoplogin/pop_upwidget/fornavigatorthree/action_button.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/pop_upwidget/fornavigatorthree/featured_card.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/pop_upwidget/fornavigatorthree/wlecome.dart';
import 'package:flutter/material.dart';

class WalkInPopUpthree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Check if the screen width is more suitable for desktop or mobile
        bool isDesktop = constraints.maxWidth > 800;

        return Container(
          width: isDesktop ? 1146 : constraints.maxWidth * 0.9,
          padding: const EdgeInsets.all(40),
          decoration: ShapeDecoration(
            color: Color(0xFF262626),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.14),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x19167DB7),
                blurRadius: 50,
                offset: Offset(0, 20),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            children: [
              WelcomeText(
                title: 'WELCOME TO XYZ!',
                subtitle: 'Manage all your digital signage anywhere, anytime with XYZ',
              ),
              const SizedBox(height: 40), // Reduced height for mobile
              if (isDesktop) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: FeatureCard(
                        title: 'Content Creation',
                        icon: FlutterLogo(size: 40),
                      ),
                    ),
                    const SizedBox(width: 20), // Spacing between cards
                    Expanded(
                      child: FeatureCard(
                        title: 'Display Management',
                        icon: FlutterLogo(size: 52),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: FeatureCard(
                        title: 'Reports and Analytics',
                        icon: FlutterLogo(size: 40),
                      ),
                    ),
                  ],
                ),
              ] else ...[
                Column(
                  children: [
                    FeatureCard(
                      title: 'Content Creation',
                      icon: FlutterLogo(size: 40),
                    ),
                    const SizedBox(height: 20),
                    FeatureCard(
                      title: 'Display Management',
                      icon: FlutterLogo(size: 52),
                    ),
                    const SizedBox(height: 20),
                    FeatureCard(
                      title: 'Reports and Analytics',
                      icon: FlutterLogo(size: 40),
                    ),
                  ],
                ),
              ],
              const SizedBox(height: 40), // Reduced height for mobile
              ActionButtons(
                onTour: () {
                  // Handle Get a Tour button press
                },
                onLater: () {
                  // Handle Maybe Later button press
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
