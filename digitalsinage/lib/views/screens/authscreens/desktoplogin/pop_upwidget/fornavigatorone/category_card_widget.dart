import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final Widget icon;
  final Color borderColor;
  final Color iconColor;
  final String category;

  const CategoryCard({
    required this.title,
    required this.icon,
    required this.borderColor,
    required this.iconColor,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CategoryController>();

    return Obx(() {
      final isSelected = controller.isSelected(category);

      return GestureDetector(
        onTap: () {
          controller.toggleCategory(category);
        },
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isMobile = constraints.maxWidth < 600;
            final cardWidth = isMobile ? constraints.maxWidth * 0.8 : 240.0;
            final cardHeight = isMobile ? 120.0 : 156.0;
            final iconSize = isMobile ? 36.0 : 44.0;

            return Container(
              width: cardWidth,
              height: cardHeight,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 14.40, vertical: 15.51),
                      decoration: BoxDecoration(
                        color: Color(0xFF2D3142),
                        borderRadius: BorderRadius.circular(4.43),
                        border: Border.all(width: 1.11, color: borderColor),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: iconSize,
                            height: iconSize,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: icon,
                          ),
                          const SizedBox(height: 18.83),
                          Text(
                            title,
                            style: TextStyle(
                              color: borderColor,
                              fontSize: isMobile ? 14 : 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (isSelected)
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Container(
                        width: 32,
                        height: 32,
                        padding: const EdgeInsets.all(9.19),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(color: borderColor),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.check,
                            size: 20,
                            color: Colors.white, // Change the tick mark color if needed
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      );
    });
  }
}



class CategoryController extends GetxController {
  // Observable list to track selected categories
  var selectedCategories = RxList<String>();

  // Method to toggle the selection of a category
  void toggleCategory(String category) {
    if (selectedCategories.contains(category)) {
      selectedCategories.remove(category);
    } else {
      selectedCategories.add(category);
    }
  }

  // Check if a category is selected
  bool isSelected(String category) {
    return selectedCategories.contains(category);
  }
}
