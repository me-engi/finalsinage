import 'package:digitalsinage/constants/constant_color.dart';
import 'package:digitalsinage/constants/textstyle.dart';
import 'package:digitalsinage/widget/login_cardwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SideLoginScreen extends StatelessWidget {
  const SideLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
        children: [
          Gap(30),
          LoginCardWidget(
            child: Column(
              children: [
                Text(
                  "'...\nREMOTE\nMANAGEMENT\nOF DIGITAL \nSIGNAGE',",
                  style: getTextTheme().bodyLarge,
                  textAlign: TextAlign.center,
                ),
                Gap(10),
                Text(
                  "'Manage all your digital\nsignage anywhere,\nanytime with XYZ',",
                  style: getTextTheme().bodyMedium,
                  textAlign: TextAlign.center,
                ),
                Gap(20),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/logo/eclips.svg',
                      width: 100, // Adjust width as needed
                      height: 100, // Adjust height as needed
                    ),
                    Image.asset(
                      'assets/images/thunderbolt.png',
                      width: 50, // Adjust width as needed
                      height: 50, // Adjust height as needed
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
