import 'package:digitalsinage/views/screens/authscreens/desktoplogin/navigator_two_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import for SVG support
import 'package:get/get.dart';

import 'button_widget.dart'; // Import your custom button widget
import 'catagoryandtitle.dart'; // Ensure this file contains the 'categories' list
import 'category_card_widget.dart';

class PopupContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize the controller
    Get.put(CategoryController());

    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;

        return Container(
          width: isMobile ? constraints.maxWidth * 0.9 : 1050,
          padding: EdgeInsets.all(isMobile ? 20 : 40),
          decoration: BoxDecoration(
            color: Color(0xFF262626),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Color(0x19167DB7),
                blurRadius: 50,
                offset: Offset(0, 20),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select the category you will be particularly using the app for...',
                style: TextStyle(
                  color: Color(0xFFF0FBFF),
                  fontSize: isMobile ? 24 : 28,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Customize templates will be provided based on the response.',
                style: TextStyle(
                  color: Color(0xFFB5B7C0),
                  fontSize: isMobile ? 14 : 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              // GridView to handle category cards in a responsive grid
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: isMobile ? 2 : 4, // 2 columns for mobile, 4 for desktop
                    crossAxisSpacing: isMobile ? 10 : 20,
                    mainAxisSpacing: isMobile ? 20 : 20,
                    childAspectRatio: isMobile ? 1.0 : 1.2, // Adjust aspect ratio for desktop
                  ),
                  itemCount: categories.length, // Total number of items
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return CategoryCard(
                      title: category.title,
                      icon: SvgPicture.asset(
                        category.iconPath, // Use SvgPicture.asset for SVG icons
                        color: Color(0xFF209A75), // Set the color if needed
                      ),
                      borderColor: Color(0xFF167DB7),
                      iconColor: Color(0xFF209A75),
                      category: category.title,
                      // isSelected: false, // Set appropriate selection state if needed
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              // Custom button at the bottom
            CustomButtonnav(
  text: 'Next',
  color: Color(0xFF167DB7),
  borderColor: Colors.black,
  onPressed: () {
    // Navigate to WalkInPopUpone
    Get.to(() => WalkInPopUptwo());

    // Print the message
    print('Next button pressed');
  },
),
            ]
          ),
        );
      },
    );
  }
}


// CustomButton(
//               text: 'Sign-In',
//               color: Color(0xFF167DB7),
//               onPressed: () {
//                 // Navigate to WalkInPopUpone
//                 Get.to(() => WalkInPopUpone());
//               }, borderColor: Colors.black,
//             ),