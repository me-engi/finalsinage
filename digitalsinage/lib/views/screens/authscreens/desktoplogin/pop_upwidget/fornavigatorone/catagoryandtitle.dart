// category_model.dart
import 'package:flutter/material.dart';

class Category {
  final String title;
  final String iconPath;

  Category({
    required this.title,
    required this.iconPath,
  });

}

final List<Category> categories = [
  Category(title: 'Retail', iconPath: 'assets/icons/retail.svg'),
  Category(title: 'Corporate', iconPath: 'assets/icons/corporate.svg'),
  Category(title: 'Healthcare', iconPath: 'assets/icons/healthcare.svg'),
  Category(title: 'Finance', iconPath: 'assets/icons/finance.svg'),
  Category(title: 'Food', iconPath: 'assets/icons/food.svg'),
  Category(title: 'Hospitality', iconPath: 'assets/icons/hospitality.svg'),
  Category(title: 'Manufacturing', iconPath: 'assets/icons/manufacturing.svg'),
  Category(title: 'Other', iconPath: 'assets/icons/other.svg'),
];
