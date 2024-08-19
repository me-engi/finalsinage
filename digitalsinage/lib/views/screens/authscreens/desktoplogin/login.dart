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
                flex: 2,
                child: SizedBox(
                  child: LoginWidget(),
                ),
              ),
            Expanded(
              flex: 7,
              child: SideLoginScreen(),

            ),
            
          ],
        ),
      ),
    );
  }
}


