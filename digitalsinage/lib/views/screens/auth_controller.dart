import 'package:digitalsinage/views/screens/authscreens/desktoplogin/login_widget.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var isSignIn = true.obs;

  void toggleSignInSignUp() {
    isSignIn.value = !isSignIn.value;
  }
}

// Main Widget with Toggle Logic
class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Get.find<AuthController>().isSignIn.value
            ? SignIn()
            : SignUp();
      }),
    );
  }
}


