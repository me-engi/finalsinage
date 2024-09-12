import 'package:digitalsinage/utils/responsive.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/Screen_page/nav_bar/nav_bar_widget/nav_bar_darkmode.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/Screen_page/widget_screenpage/togetherscreen_avatar.dart';
import 'package:flutter/material.dart';

class Togetherscreen extends StatefulWidget {
  const Togetherscreen({super.key});

  @override
  State<Togetherscreen> createState() => _TogetherscreenState();
}

class _TogetherscreenState extends State<Togetherscreen> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: NavBarDarkMode(), // Assuming NavBarDarkMode is a defined widget
                ),
              ),
            if (isDesktop)
              Expanded(
                flex: 4,
                child: SizedBox(
                  child: DashboardScreen(), // Assuming MainScreenOne is a defined widget
                ),
              ),
            // if (!isDesktop)
            //   Expanded(
            //     child: SignIn(), // Assuming SignIn is a defined widget for non-desktop
            //   ),
          ],
        ),
      ),
    );
  }
}
