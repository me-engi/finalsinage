import 'package:digitalsinage/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:digitalsinage/constants/constant_color.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashborad UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ConstColors.backgroundColor,
        brightness: Brightness.dark,
      ),
      home: const HomeScreen(),
    );
  }
}