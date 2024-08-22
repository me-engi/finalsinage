import 'package:flutter/material.dart';

class CustomIcons {
  static const String _kFontFam = 'CustomIcons';
  static const String _kFontPkg = 'my_icons';

  // Icon Data for custom font icons
  static const IconData screens = IconData(0xe900, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData media = IconData(0xe901, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData compose = IconData(0xe902, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData schedule = IconData(0xe903, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData apps = IconData(0xe904, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData analytics = IconData(0xe905, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData settings = IconData(0xe906, fontFamily: _kFontFam, fontPackage: _kFontPkg);

  // Asset image paths
  static const String screensAsset = 'assets/icons/screen.svg';
  static const String mediaAsset = 'assets/icons/media.svg';
  static const String composeAsset = 'assets/icons/compose.svg';
  static const String scheduleAsset = 'assets/icons/schedule.svg';
  static const String appsAsset = 'assets/icons/apps.svg';
  static const String analyticsAsset = 'assets/icons/analytics.svg';
  static const String settingsAsset = 'assets/icons/setting.svg';
   static const String appleAsset = 'assets/icons/apple.svg';
    static const String facebookAsset = 'assets/icons/facebook.svg';
     static const String googleAsset = 'assets/icons/google.svg';
  static const String ellipse = 'assets/icons/Ellipse.svg';


  // Colors
  static const Color screensColor = Color(0xFF2196F3); // Blue color
  static const Color mediaColor = Color(0xFFF44336); // Red color
  static const Color composeColor = Color(0xFF4CAF50); // Green color
  static const Color scheduleColor = Color(0xFFFFC107); // Amber color
  static const Color appsColor = Color(0xFF9C27B0); // Purple color
  static const Color analyticsColor = Color(0xFFFF5722); // Deep Orange color
  static const Color settingsColor = Color(0xFF607D8B); // Blue Grey color

  // Sizes
  static const double iconSizeSmall = 24.0;
  static const double iconSizeMedium = 36.0;
  static const double iconSizeLarge = 48.0;

  // Fonts
  static const TextStyle screensFont = TextStyle(
    fontFamily: _kFontFam,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: screensColor,
  );

  static const TextStyle mediaFont = TextStyle(
    fontFamily: _kFontFam,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: mediaColor,
  );

  static const TextStyle composeFont = TextStyle(
    fontFamily: _kFontFam,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: composeColor,
  );

  static const TextStyle scheduleFont = TextStyle(
    fontFamily: _kFontFam,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: scheduleColor,
  );

  static const TextStyle appsFont = TextStyle(
    fontFamily: _kFontFam,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: appsColor,
  );

  static const TextStyle analyticsFont = TextStyle(
    fontFamily: _kFontFam,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: analyticsColor,
  );

  static const TextStyle settingsFont = TextStyle(
    fontFamily: _kFontFam,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: settingsColor,
  );
}
