import 'package:digitalsinage/constants/constant_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFormField extends StatelessWidget {
  final Widget iconss;
  final String customText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;
  final bool obscureText;
  final double? width; // Optional width
  final double? height; // Optional height

  CustomTextFormField({
    required this.iconss,
    required this.customText,
    required this.controller,
    this.validator,
    this.inputFormatters,
    this.onChanged,
    required this.obscureText,
    this.width, // Optional width parameter
    this.height, // Optional height parameter
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, // Set width
      height: height, // Set height
      decoration: BoxDecoration(
        color: ConstColors.loginlightblack, // Background color for the container
        borderRadius: BorderRadius.circular(12), // Match border radius with TextFormField
        // You can add more decoration properties here if needed
      ),
      child: TextFormField(
        controller: controller,
        validator: validator,
        inputFormatters: inputFormatters,
        onChanged: onChanged,
        obscureText: obscureText,
        style: TextStyle(color: Colors.white), // Ensure text color is white
        decoration: InputDecoration(
          prefixIcon: SizedBox(
            width: 24, // Set icon width
            height: 24, // Set icon height
            child: iconss,
          ),
          labelText: customText,
          labelStyle: TextStyle(color: Colors.white), // Ensure label text is white
          filled: true,
          fillColor: Colors.transparent, // Transparent fillColor to show background color
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none, // Remove border if needed
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.white), // Border color when focused
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.white), // Border color when not focused
          ),
        ),
      ),
    );
  }
}
