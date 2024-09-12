

import 'package:digitalsinage/constants/constant_color.dart';
import 'package:digitalsinage/utils/responsive.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/Screen_page/widget_screenpage/combine_header.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/Screen_page/widget_screenpage/screen_pagewidget.dart';
import 'package:flutter/material.dart';



class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MainScreenone(),
                      SizedBox(height: defaultPadding),
                      // RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      // if (Responsive.isMobile(context)) StorageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we don't want to show it
                // if (!Responsive.isMobile(context))
                //   Expanded(
                //     flex: 2,
                //     child: StorageDetails(),
                //   ),
              ],
            )
          ],
        ),
      ),
    );
  }
}