// import 'package:digitalsinage/views/screens/auth_controller.dart';
// import 'package:digitalsinage/views/screens/authscreens/desktoplogin/login.dart';
// import 'package:digitalsinage/views/screens/authscreens/desktoplogin/navigator_one_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//  // Import your AuthController

// void main() {
//   // Initialize GetX controllers
//   Get.put(AuthController()); // Register AuthController with GetX

//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Initialize ScreenUtil
//     return ScreenUtilInit(
//       designSize: const Size(720, 900), // Design size of your Figma file
//       minTextAdapt: true,
//       splitScreenMode: true,
//       builder: (context, child) {
//         return GetMaterialApp(
//           debugShowCheckedModeBanner: false, // Disable the debug banner
//           initialRoute: '/login', // Set the initial route to the login screen
//           getPages: [
//             GetPage(name: '/login', page: () => LoginScreen()),
//             GetPage(name: '/walkinpopupone', page: () => WalkInPopUpone()), // Add this route
//             // Add more routes as needed
//             // GetPage(name: '/signup', page: () => SignupScreen()),
//             // GetPage(name: '/introduction1', page: () => IntroductionOne()),
//             // GetPage(name: '/introduction2', page: () => IntroductionTwo()),
//             // GetPage(name: '/introduction3', page: () => IntroductionThree()),
//             // GetPage(name: '/home', page: () => HomeScreen()),
//           ],
//         );
//       },
//     );
//   }
// }



import 'package:digitalsinage/constants/constant_color.dart';
import 'package:digitalsinage/controller/menucontroler/menucontroller.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/Screen_page/togetherscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(720, 900), // Design size of your Figma file
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Admin Panel',
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: bgColor,
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                .apply(bodyColor: Colors.white),
            canvasColor: secondaryColor,
          ),
          home: MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (context) => MenuAppController(),
              ),
              // Add any other providers here if needed
            ],
            child: Togetherscreen(),
          ),
        );
      },
    );
  }
}
