import 'package:digitalsinage/utils/responsive.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/login_widget.dart';
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/side_loginscreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              Expanded(
                flex: 1,  // Adjusted to 1
                child: SizedBox(
                  child: SignIn(),
                ),
              ),
            if (isDesktop)
              Expanded(
                flex: 1,  // Adjusted to 1
                child: SizedBox(
                  child: SideLoginScreen(),
                ),
              ),
            if (!isDesktop)
              // For non-desktop layouts, you can specify a different layout if needed
              Expanded(
                child: SignIn(),
              ),
          ],
        ),
      ),
    );
  }
}



