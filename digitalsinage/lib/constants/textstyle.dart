import 'package:digitalsinage/constants/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';



TextTheme getTextTheme() {
  return TextTheme(
    headlineLarge: GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      color: ConstColors.extralightmetal,
      decoration: TextDecoration.none,
      fontSize: 28.sp,
    ),
 headlineMedium: GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      color: Color(0xFFF0FBFF), // Updated color
      decoration: TextDecoration.none,
      fontSize: 28.sp, // Updated font size
      height: 0, // Updated height
    ),
       headlineSmall: GoogleFonts.inter(
      fontWeight: FontWeight.w400, // Updated font weight
      color: Color(0xFFF0FBFF), // Updated color
      decoration: TextDecoration.none,
      fontSize: 24.sp, // Updated font size
      height: 0.05, // Updated height
    ),

    labelSmall: GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      color: ConstColors.loginextralightgrey,
      decoration: TextDecoration.none,
      fontSize: 14.sp,
      
    )

    
    // headlineSmall: GoogleFonts.inter(
    //   fontWeight: FontWeight.w400,
    //   color: ConstColors.black,
    //   decoration: TextDecoration.none,
    //   fontSize: 10.sp,
    // ),
    // bodyLarge: GoogleFonts.inter(
    //   fontWeight: FontWeight.w500,
    //   color: ConstColors.black,
    //   decoration: TextDecoration.none,
    //   fontSize: 14.sp,
    // ),
    // bodyMedium: GoogleFonts.inter(
    //     fontWeight: FontWeight.w500,
    //     color: ConstColors.black,
    //     fontSize: 14.sp,
    //     decoration: TextDecoration.underline,
    //     decorationColor: ConstColors.black),
    // bodySmall: GoogleFonts.inter(
    //   fontWeight: FontWeight.w500,
    //   color: ConstColors.darkGrey,
    //   fontSize: 18.sp,
    // ),
    // titleLarge: GoogleFonts.inter(
    //   fontWeight: FontWeight.w500,
    //   color: ConstColors.darkGrey,
    //   decoration: TextDecoration.none,
    //   fontSize: 14.sp,
    // ),
    // titleMedium: GoogleFonts.inter(
    //   fontWeight: FontWeight.w500,
    //   color: ConstColors.darkGrey,
    //   decoration: TextDecoration.none,
    //   fontSize: 12.sp,
    // ),
    // titleSmall: GoogleFonts.inter(
    //   fontWeight: FontWeight.normal,
    //   color: ConstColors.darkGrey,
    //   decoration: TextDecoration.none,
    //   fontSize: 10.sp,
    // ),
    // displayLarge: GoogleFonts.inter(
    //   fontWeight: FontWeight.w500,
    //   color: ConstColors.backgroundColor,
    //   decoration: TextDecoration.none,
    //   fontSize: 13.sp,
    // ),
    // displayMedium: GoogleFonts.inter(
    //     fontWeight: FontWeight.normal,
    //     color: ConstColors.purple,
    //     fontSize: 13.sp,
    //     decoration: TextDecoration.underline,
    //     decorationColor: ConstColors.purple),
    // displaySmall: GoogleFonts.inter(
    //   fontWeight: FontWeight.w500,
    //   fontSize: 14.sp,
    //   color: ConstColors.purple,
    //   decoration: TextDecoration.none,
    // ),
    
    );
}