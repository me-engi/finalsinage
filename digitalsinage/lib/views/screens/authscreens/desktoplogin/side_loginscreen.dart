// import 'package:digitalsinage/constants/constant_color.dart';
// import 'package:digitalsinage/constants/textstyle.dart';
// import 'package:digitalsinage/widget/login_cardwidget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:gap/gap.dart';

// class SideLoginScreen extends StatelessWidget {
//   const SideLoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ConstColors.backgroundColor,
//       body: Stack(
//         alignment: Alignment.bottomLeft,
//         children: [
//           // The new image as background

//           Column(
//             mainAxisAlignment:
//                 MainAxisAlignment.start, 
//                 // crossAxisAlignment: CrossAxisAlignment.end,// Center the content vertically
//             children: [
//               Gap(30),
//               Padding(
//                 padding: const EdgeInsets.only(left: 101.0, top: 100),
//                 child: LoginCardWidget(
//                   child: Column(
//                                 mainAxisAlignment:
//                 MainAxisAlignment.center, 
//                     children: [
//                       Text(
//                         "'...\nREMOTE\nMANAGEMENT\nOF DIGITAL \nSIGNAGE',",
//                         style: getTextTheme().bodyLarge,
//                         textAlign: TextAlign.center,
//                       ),
//                       Gap(10),
//                       Text(
//                         "'Manage all your digital\nsignage anywhere,\nanytime with XYZ',",
//                         style: getTextTheme().bodyMedium,
//                         textAlign: TextAlign.center,
//                       ),
//                       Gap(20),
//                       Stack(
//                         alignment: Alignment.center,
//                         children: [
//                           SvgPicture.asset(
//                             'assets/icons/Ellipse.svg',
//                             width: 100, // Adjust width as needed
//                             height: 100, // Adjust height as needed
//                           ),
//                           Image.asset(
//                             'assets/images/thunderbolt.png',
//                             width: 50, // Adjust width as needed
//                             height: 50, // Adjust height as needed
//                           ),
//                         ],
//                       ),
//                       Gap(15),
                      
// Column(
//   children: [
//     Positioned(
//       bottom: 10,
//       child: Transform.translate(
//         offset: Offset(0, 0), // Shift the image 30 pixels to the left
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20.0), // Add padding if needed
//           child: Image.asset(
//             'assets/images/womenwithtab.png',
//             width: MediaQuery.of(context).size.width * 0.8,
//             fit: BoxFit.contain,
//           ),
//         ),
//       ),
//     ),
//   ],
// )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:digitalsinage/constants/constant_color.dart';
import 'package:flutter/material.dart';

class SideLoginScreen extends StatelessWidget {
  const SideLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.backgroundColor,
      body: Padding(
        
        padding: const EdgeInsets.only(top: 109.0, right: 175.0),
        child: Align(
          
          child: Image.asset(
            'assets/images/womenwithtabscreenshot.png',
            width: 800, // Adjust width for desktop
            height: 600, // Adjust height for desktop
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}


