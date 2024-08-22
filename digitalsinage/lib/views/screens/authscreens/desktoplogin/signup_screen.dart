// import 'package:digitalsinage/assets/icons.dart';
// import 'package:digitalsinage/constants/constant_color.dart';
// import 'package:digitalsinage/constants/textstyle.dart';
// import 'package:digitalsinage/widget/custom_icon_container.dart';
// import 'package:digitalsinage/widget/custombutton.dart';
// import 'package:digitalsinage/widget/customtextfield.dart';
// import 'package:digitalsinage/widget/line_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:gap/gap.dart';
// import 'package:get/get.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class LoginWidget extends StatefulWidget {
//   const LoginWidget({super.key});

//   @override
//   _LoginWidgetState createState() => _LoginWidgetState();
// }

// class _LoginWidgetState extends State<LoginWidget> {
//   final username = TextEditingController();
//   final password = TextEditingController();
//   final formKey = GlobalKey<FormState>();
//   RxBool passwordVisibility = true.obs;
//   RxBool isLoading = false.obs;
//   RxBool isLoadingGoogle = false.obs;

//   @override
//   void dispose() {
//     username.dispose();
//     password.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: ConstColors.loginlightgun,
//         body: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.only(left: 40.w, top: 100.h),
//             child: Form(
//               key: formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Gap(80),
//                   Text(
//                     "WELCOME!",
//                     style: getTextTheme().headlineMedium,
//                   ),
//                   Gap(10),
//                   Text(
//                     "Sign-up yourself to XYZ.",
//                     style: getTextTheme().headlineSmall,
//                   ),
//                   Gap(40),
//                   CustomTextFormField(

//                     iconss: SvgPicture.asset(
//                       "assets/icons/username.svg",
//                       color: ConstColors.loginlightblack,
//                       width: 24.0, // Set desired width
//                       height: 24.0, // Set desired height
//                       fit: BoxFit.contain,
//                     ),
//                     customText: 'Username',
//                     controller: username,
//                     validator: (String? value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your username';
//                       }
//                       return null;
//                     },
//                     inputFormatters: [],
//                     onChanged: (String value) {},
//                   ),
//                   Gap(10),
//                   Obx(() => CustomTextFormField(
//                         iconss: SvgPicture.asset("assets/icons/password.svg"),
//                         customText: 'Password',
//                         controller: password,
//                         obsercureText: passwordVisibility.value,
//                         validator: (String? value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your password';
//                           }
//                           return null;
//                         },
//                         inputFormatters: [],
//                         onChanged: (String value) {},
//                       )),
//                   Gap(10),
//                   Obx(() => CustomOutlinedButton(
//                         onPressed: () {
//                           if (formKey.currentState?.validate() ?? false) {
//                             isLoading.value = true;
//                             // Perform login action here
//                           }
//                         },
//                         buttonText: isLoading.value ? 'Loading...' : 'Login',
//                         buttonSize: null,
//                         width: 24,
//                         height: 10,
//                       )),
// Gap(20),
// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Line(width: 144, height: 1.05),
//     Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Text(
//         "OR",
//         style: getTextTheme().bodyMedium,
//       ),
//     ),
//     Line(width: 144, height: 1.05),
//   ],
// ),
// Gap(20),
// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     CustomIconContainer(
//       onTap: () {
//         // Handle tap
//       },
//       icon: SvgPicture.asset(
//         'assets/icons/facebook.svg',
//         width: 24.0, // Set desired width
//         height: 24.0, // Set desired height
//         fit: BoxFit.contain,
//       ),
//     ),
//     CustomIconContainer(
//       onTap: () {
//         // Handle tap
//       },
//       icon: SvgPicture.asset(
//         'assets/icons/google.svg',
//         width: 24.0, // Set desired width
//         height: 24.0, // Set desired height
//         fit: BoxFit.contain,
//       ),
//     ),
//     CustomIconContainer(
//       onTap: () {
//         // Handle tap
//       },
//       icon: SvgPicture.asset(
//         'assets/icons/apple.svg',
//         width: 24.0, // Set desired width
//         height: 24.0, // Set desired height
//         fit: BoxFit.contain,
//       ),
//     ),
//   ],
// ),
// Gap(20),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Already have an account?",
//                         style: getTextTheme()
//                             .bodyMedium, // Use your desired TextStyle
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           // Handle the login action here, such as navigating to the login screen
//                           print('Login tapped');
//                         },
//                         child: Text(
//                           " Login",
//                           style: getTextTheme().bodyMedium?.copyWith(
//                                 color: ConstColors
//                                     .loginblue, // Your desired color for "Login"
//                                 fontWeight: FontWeight.bold,
//                               ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }
// }

import 'package:digitalsinage/constants/constant_color.dart';
import 'package:digitalsinage/constants/textstyle.dart';
import 'package:digitalsinage/views/screens/auth_controller.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/justforloginwiged/custom_button_icon.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/justforloginwiged/custom_text.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/justforloginwiged/customtextfield.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/navigator_one_screen.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/navigator_two_screen.dart';
import 'package:digitalsinage/widget/custom_icon_container.dart';
import 'package:digitalsinage/widget/line_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
// Import the file where you saved the custom widgets

class SignUp extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.loginlightgun,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Header
            CustomText(
              text: 'WELCOME!',
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            CustomText(
              text: 'Sign-up yourself to XYZ.',
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),

            // Username Field
            CustomTextFormField(
              height: 62,
              width: 440,
              iconss: SvgPicture.asset(
                "assets/icons/username.svg",
                width: 24,
                height: 24,
              ),
              customText: 'Username',
              controller: usernameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
              obscureText: false,
            ),
            const SizedBox(height: 27),

            // Password Field
            CustomTextFormField(
              height: 62,
              width: 440,
              iconss: SvgPicture.asset(
                "assets/icons/password.svg",
                width: 24,
                height: 24,
              ),
              customText: 'Password',
              controller: passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
              obscureText: true,
            ),
            const SizedBox(height: 27),

            // Confirm Password Field
            CustomTextFormField(
              iconss: SvgPicture.asset("assets/icons/confirm_password.svg"),
              customText: 'Confirm Password',
              controller: confirmPasswordController,
              validator: (value) {
                if (value != passwordController.text) {
                  return 'Passwords do not match';
                }
                return null;
              },
              obscureText: true,
            ),
            const SizedBox(height: 27),

            // Sign Up Button
            CustomButton(
              text: 'Sign-un',
              color: Color(0xFF167DB7),
              onPressed: () {
                // Navigate to WalkInPopUpone
                Get.to(() => WalkInPopUpone());
              }, borderColor: Colors.black,
            ),
            const SizedBox(height: 20),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Line(width: 144, height: 1.05),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "OR",
                    style: getTextTheme().bodyMedium,
                  ),
                ),
                Line(width: 144, height: 1.05),
              ],
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconContainer(
                  onTap: () {
                    // Handle tap
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/facebook.svg',
                    width: 24.0, // Set desired width
                    height: 24.0, // Set desired height
                    fit: BoxFit.contain,
                  ),
                ),
                CustomIconContainer(
                  onTap: () {
                    // Handle tap
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/google.svg',
                    width: 24.0, // Set desired width
                    height: 24.0, // Set desired height
                    fit: BoxFit.contain,
                  ),
                ),
                CustomIconContainer(
                  onTap: () {
                    // Handle tap
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/apple.svg',
                    width: 24.0, // Set desired width
                    height: 24.0, // Set desired height
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Gap(20),

            // Footer
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  color: Color(0xFFB5B7C0),
                  fontSize: 16.87,
                ),
                children: [
                  TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                      color: Color(0xFFB5B7C0),
                      fontSize: 16.87,
                    ),
                  ),
                  TextSpan(
                    text: 'Sign-up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.87,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Handle tap a
                        Get.find<AuthController>().toggleSignInSignUp();
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
