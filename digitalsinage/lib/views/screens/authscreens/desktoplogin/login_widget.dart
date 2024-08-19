import 'package:digitalsinage/assets/icons.dart';
import 'package:digitalsinage/constants/constant_color.dart';
import 'package:digitalsinage/constants/textstyle.dart';
import 'package:digitalsinage/widget/custombutton.dart';
import 'package:digitalsinage/widget/customtextfield.dart';
import 'package:digitalsinage/widget/line_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final username = TextEditingController();
  final password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  RxBool passwordVisibility = true.obs;
  RxBool isLoading = false.obs;
  RxBool isLoadingGoogle = false.obs;

  @override
  void dispose() {
    username.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.loginblue,
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gap(30),
            Text(
              "WELCOME!",
              style: getTextTheme().headlineLarge,
            ),
            Gap(10),
            Text(
              "Sign-up yourself to XYZ.",
              style: getTextTheme().headlineMedium,
            ),
            Gap(10),
            CustomTextFormField(
              customText: 'Username',
              controller: username,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
              inputFormatters: [],
              onChanged: (String value) {},
            ),
            Gap(10),
            Obx(() => CustomTextFormField(
                  customText: 'Password',
                  controller: password,
                  obsercureText: passwordVisibility.value,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  inputFormatters: [],
                  onChanged: (String value) {},
                )),
            Gap(10),
            Obx(() => CustomOutlinedButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      isLoading.value = true;
                      // Perform login action here
                    }
                  },
                  buttonText: isLoading.value ? 'Loading...' : 'Login',
                  buttonSize: null,
                  width: 24,
                  height: 10,
                )),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Line(width: 144, height: 1.05),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "OR",
                    style: getTextTheme().bodyMedium,
                  ),
                ),
                Line(width: 144, height: 1.05),
              ],
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  CustomIcons.appleAsset,
                  width: 40, // Adjust size as needed
                  height: 40,
                ),
                Gap(20), // Space between icons
                Image.asset(
                  CustomIcons.facebookAsset,
                  width: 40,
                  height: 40,
                ),
                Gap(20),
                Image.asset(
                  CustomIcons.googleAsset,
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
