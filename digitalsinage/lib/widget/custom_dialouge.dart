import 'dart:ui';

import 'package:digitalsinage/constants/constant_color.dart';
import 'package:digitalsinage/constants/textstyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class customDialogueWithCancel extends StatelessWidget {
  String? title;
  Color? backgroundColor;
  String? content;
  String? content1;
  String? content2;
  VoidCallback? onClick;
  String? dismissBtnTitle;
  String? cancelBtn;
  VoidCallback? onCancelClick;
  TextStyle? titleStyle;
  TextStyle? dismissBtnTitleStyle;
  TextStyle? cancelBtnStyle;
  Color? cancelBtnColor;
  // ignore: use_key_in_widget_constructors
  customDialogueWithCancel(
      {this.backgroundColor,
      this.content,
      this.content1,
      this.content2,
      this.dismissBtnTitle,
      this.onClick,
      this.titleStyle,
      this.dismissBtnTitleStyle,
      this.title,
      this.cancelBtnStyle,
      this.cancelBtn,
      this.onCancelClick,
      this.cancelBtnColor});
//child: Text(content)
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 3,
        sigmaY: 3,
      ),
      child: AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        backgroundColor: backgroundColor,
        surfaceTintColor: ConstColors.loginblue,
        title: Text(
          title!,
          style: titleStyle ?? getTextTheme().displayLarge,
        ),
        content: RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 14.0,
              color: ConstColors.backgroundColor,
            ),
            children: <TextSpan>[
              TextSpan(text: content,),
              TextSpan(
                  text: content1, style: getTextTheme().headlineMedium),
              TextSpan(text: content2),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              return onClick!(); // dismisses only the dialog and returns nothing
            },
            child: Text(
              dismissBtnTitle!,
              style:dismissBtnTitleStyle ?? getTextTheme().displayLarge,
            ),
          ),
          TextButton(
            // color: cancelBtnColor,
            onPressed: () {
              return onCancelClick!(); // dismisses only the dialog and returns nothing
            },
            child: Text(
              cancelBtn!,
              style:cancelBtnStyle ?? getTextTheme().displayLarge,
            ),
          ),
        ],
      ),
    );
  }
}