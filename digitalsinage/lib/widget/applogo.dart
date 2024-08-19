import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
class CommonLogo extends StatelessWidget {
  const CommonLogo({super.key, required this.tap});
  final bool tap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:tap==true? () {
        if (Get.currentRoute.split('?').first != '/dashboard') {
          Get.offAllNamed('/dashboard');
        }
      }:null,
      child: Row(
        children: [
          Image.asset(
            'assets/logoo.png',
            width: 25.sp,
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            'Digital',
            style: TextStyle(
                decoration: TextDecoration.none,
                //fontWeight: FontWeight.w700,
                color:Theme.of(context).colorScheme.tertiary,
                fontSize: 20.sp),
          ),
          tap==true?Container(
            width: 2.w,
            height: 18.h,
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            color:Theme.of(context).colorScheme.onSecondaryContainer,):const SizedBox(),
          tap==true?Text(
            'Basic',
            style:  TextStyle(
                decoration: TextDecoration.none,
                //fontWeight: FontWeight.w700,
                color:  Theme.of(context).colorScheme.onSecondaryContainer,
                fontSize: 12.sp),
          ):const SizedBox(),
        ],
      ),
    );
  }
}