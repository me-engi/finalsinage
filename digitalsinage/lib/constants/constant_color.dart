import 'package:flutter/material.dart';

class ConstColors {
  //primary color
  static const Color loginblue = Color(0xFF167DB7);
  static const Color loginlightblack = Color(0xFF262626);
  static const Color loginlightblue = Color(0xFFEDEDED);
  static const Color loginlightgun = Color(0xFF2D3142);
  static const Color loginlightgreen = Color(0xFF595D61);
  static const Color loginextralightblue = Color(0xFFC5C5C5);
  static const Color loginextralightgrey = Color(0xFFFBE4E1);
  static const Color backgroundColor = Color(0xFF262626);
  static const Color buttonColor = Color(0xFF167DB7);
  static const Color extralightmetal = Color(0xFF0FBFF);





  static const Color loginwhite = Colors.white;

  static const Color red = Color.fromARGB(255, 255, 0, 0);

  static const shadowColor = Color.fromARGB(255, 196, 196, 196);

  static const Color countColor = Color(0xFF800080);

//Text color
  static const Color black = Colors.black;
// //background color
//   static const Color backgroundColor = Colors.white;
}

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF6F47EB), //purple
  onPrimary: Color(0xFFEEE9FD), //light  purple
  primaryContainer: Color.fromARGB(255, 224, 224, 224),
  onPrimaryContainer: Color.fromARGB(255, 245, 245, 245),
  secondary: Color(0xFFEDEDED), // grey
  onSecondary: Color(0xFFF9F9F9), //lightgrey
  secondaryContainer: Color(0xFF595D61), //darkgrey
  onSecondaryContainer: Color(0xFFC5C5C5), //textColor
  tertiary: Colors.black, // black
  scrim: Color(0xFFF5F8FA),
  error: Color.fromARGB(255, 255, 0, 0), // red
  onError: Color(0xFFEEE9FD), //light  purple
  tertiaryContainer: Color(0xFFEEE9FD), //light  purple
  background: Colors.white, // backgroundColor
  onBackground: Color(0xFF1C1B1F),
  surface: Color(0xFFF9F9F9), //lightgrey
  onSurface: Color(0xFF1C1B1F),

  shadow: Color.fromARGB(255, 196, 196, 196), // shadow color
  surfaceTint: Colors.white, // white
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF6F47EB), //purple
  onPrimary: Color(0xFFEEE9FD), // Light purple 333639
  primaryContainer: Color(0xFF222223),
  onPrimaryContainer: Color.fromARGB(255, 245, 245, 245),
  secondary: Colors.white, // Dark gray
  onSecondary: Colors.white, // Light gray
  secondaryContainer: Colors.white, // Darker background for containers
  onSecondaryContainer: Colors.white, // Text color on dark container background
  tertiary: Color(0xFFF9F9F9),
  tertiaryContainer: Color.fromARGB(255, 64, 0, 255), //light  purple
  scrim:Colors.white,
  error: Color.fromARGB(255, 255, 0, 0), // Red
  onError: Colors.black54, //White text on red background

  background: Color(0xFF1e1e1e), // Dark background
  onBackground: Color(0xFFEEEEEE), // Light color for text on dark background
  surface: Color(0xFF333639), // Dark surface color
  onSurface:
      Color.fromARGB(255, 201, 8, 8), // Light color for text on dark surface

  shadow: Color.fromARGB(255, 100, 100, 100), // Adjusted shadow color
  surfaceTint: Colors.black, // Black surface tint
);