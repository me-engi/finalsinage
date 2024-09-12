import 'package:digitalsinage/constants/constant_color.dart';
import 'package:digitalsinage/controller/menucontroler/menucontroller.dart';
import 'package:digitalsinage/utils/responsive.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/Screen_page/searchbar_widget/searchwidget.dart';
import 'package:digitalsinage/widget/common_avatar/frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';



class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    if (!Responsive.isDesktop(context))
      IconButton(
        icon: Icon(Icons.menu),
        onPressed: context.read<MenuAppController>().controlMenu,
      ),
    if (!Responsive.isMobile(context))
      Padding(
        padding: const EdgeInsets.only(top: 80.0, left: 40.0),
        child: Text(
          "Screen",
          style: TextStyle(
            color: Color(0xFF167DB7),
            fontSize: 40,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 0.04,
          ),
        ),
      ),

    if (!Responsive.isMobile(context))
      Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
    Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Expanded(
      child: CustomSearchField(
        width: 335.34.sp,
        height: 62.29.sp,
        icon: SvgPicture.asset('assets/icons/Search.svg',
              width: 24.w,
              height: 24.h,  ) ,
        text: 'Search',
      ),
    ),
    SizedBox(width: 10), // Gap of 10 pixels
    Expanded(
      child: CustomSearchField(
        width: 147.sp,
        height: 62.sp,
        icon: SvgPicture.asset('assets/icons/dropdown.svg'),
        text: 'All',
      ),
    ),
    SizedBox(width: 10), // Gap of 10 pixels
    Expanded(
      child: CustomSearchField(
        width: 147.sp,
        height: 62.sp,
        icon: SvgPicture.asset('assets/icons/dropdown.svg'),
        text: 'All',
      ),
    ),
    Expanded(
      child: CustomSearchField(
        width: 147.sp,
        height: 62.sp,
        icon: SvgPicture.asset('assets/icons/dropdown.svg'),
        text: 'All',
      ),
    ),
  ],
),


    Frame(badgeColor: ConstColors.loginblue, imageUrl: '',),
  ],
);
  }
}