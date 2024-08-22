import 'package:flutter/material.dart';

class PaginationWidget extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function(int) onPageChanged;

  PaginationWidget({
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalPages, (index) {
        return GestureDetector(
          onTap: () => onPageChanged(index + 1),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            width: 26,
            height: 26,
            decoration: BoxDecoration(
              color: currentPage == index + 1 ? Color(0xFF262626) : Color(0xFFD1F3FF),
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xFFD1F3FF)),
            ),
            child: Center(
              child: Text(
                '${index + 1}',
                style: TextStyle(
                  color: currentPage == index + 1 ? Colors.white : Color(0xFF262626),
                  fontSize: 12,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
