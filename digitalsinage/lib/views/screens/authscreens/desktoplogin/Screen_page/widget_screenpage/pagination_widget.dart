import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaginationWidget extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function(int) onPageChanged;

  const PaginationWidget({
    Key? key,
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalPages, (index) {
        final isSelected = currentPage == index + 1;
        return GestureDetector(
          onTap: () => onPageChanged(index + 1),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            width: 26.w,
            height: 26.h,
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF262626) : const Color(0xFFD1F3FF),
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFFD1F3FF)),
            ),
            child: Center(
              child: Text(
                '${index + 1}',
                style: TextStyle(
                  color: isSelected ? Colors.white : const Color(0xFF262626),
                  fontSize: 12.sp,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
