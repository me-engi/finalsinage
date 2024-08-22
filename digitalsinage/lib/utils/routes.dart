import 'package:digitalsinage/views/screens/authscreens/desktoplogin/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AppRoutes {
  static final routes = [
    GetPage(name: '/login', page: () => LoginScreen()),
    // GetPage(name: '/signup', page: () => SignupScreen()),
    // GetPage(name: '/introduction1', page: () => IntroductionOne()),
    // GetPage(name: '/introduction2', page: () => IntroductionTwo()),
    // GetPage(name: '/introduction3', page: () => IntroductionThree()),
    // GetPage(name: '/homepage', page: () => HomePage()),
  ];
}
