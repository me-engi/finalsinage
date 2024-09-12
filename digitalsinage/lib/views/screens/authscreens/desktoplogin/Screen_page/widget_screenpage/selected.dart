import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Selected extends StatelessWidget {
  final String sortBy; // Add this parameter for dynamic sorting text

  const Selected({
    Key? key,
    this.sortBy = 'Newest', required void Function(String sortBy) onSortChanged, // Default value if not provided
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168.w,
      height: 40.h,
      padding: EdgeInsets.symmetric(horizontal: 20.76.w, vertical: 10.38.h),
      decoration: ShapeDecoration(
        color: Color(0xFF2D3142),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF2D3142)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 111.04.w,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Sort by: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: -0.12.sp,
                      ),
                    ),
                    TextSpan(
                      text: sortBy,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: -0.12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8.31),
            Container(
              width: 19.59.w,
              height: 18.69.h,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Icon(
                Icons.arrow_drop_down, // Example icon, replace with appropriate one
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
