import 'package:flutter/material.dart';

class MenuModel {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;
  final double size;

  const MenuModel({
    required this.icon,
    required this.title,
    this.onTap,
    this.size = 24.0, // Default size is set to 24.0
  });
}
