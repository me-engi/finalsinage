// import 'package:digitalsinage/constants/constant_color.dart';
// import 'package:digitalsinage/constants/textstyle.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustomTextFormField extends StatelessWidget {
//   final String customText;
//   final TextEditingController controller;
//   final TextInputType? keyoardType;
//   final String? Function(String?)? validator;
//   final Function(String) onChanged;
//   final List<TextInputFormatter>? inputFormatters;
//   final bool readOnly;
//   final bool obsercureText;
//   final int minline;
//   final int maxline;
//   final Widget iconss;

//   const CustomTextFormField({
//     Key? key,
//     required this.customText,
//     required this.controller,
//     required this.validator,
//     required this.inputFormatters,
//     this.readOnly = false,
//     this.obsercureText = false,
//     this.minline = 1,
//     this.maxline = 1,
//     this.iconss = const SizedBox(),
//     required this.onChanged,
//     this.keyoardType,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//       obscureText: obsercureText,
//       inputFormatters: inputFormatters,
//       keyboardType: keyoardType ?? TextInputType.emailAddress,
//       readOnly: readOnly,
//       onTapOutside: (event) {
//         FocusManager.instance.primaryFocus?.unfocus();
//       },
//       style: getTextTheme().headlineMedium,
//       cursorColor: ConstColors.loginlightblack,
//       maxLines: maxline,
//       minLines: minline,
//       decoration: InputDecoration(
//         hintText: customText,
//         prefixIcon: iconss,
//         hintStyle: const TextStyle(
//           fontWeight: FontWeight.w400,
//           color: ConstColors.loginextralightgrey,
//           decoration: TextDecoration.none,
//         ),
//         errorStyle: TextStyle(
//           height: 0.sp,
//           color: ConstColors.loginwhite,
//           fontSize: 13.sp,
//           fontWeight: FontWeight.normal,
//           decoration: TextDecoration.none,
//         ),
//         filled: true,
//         fillColor: Theme.of(context).colorScheme.onSecondary,
//         contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16),
//         focusedBorder: const OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//           borderSide: BorderSide(width: .6, color: ConstColors.loginextralightblue),
//         ),
//         disabledBorder: const OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//           borderSide: BorderSide(width: .6, color: ConstColors.loginlightgun),
//         ),
//         enabledBorder: const OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//           borderSide: BorderSide(width: .6, color: ConstColors.loginlightblack),
//         ),
//         border: const OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//           borderSide: BorderSide(width: .6),
//         ),
//         errorBorder: const OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//           borderSide: BorderSide(width: .6, color: ConstColors.loginlightgreen),
//         ),
//         focusedErrorBorder: const OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//           borderSide: BorderSide(width: .6, color: ConstColors.loginextralightgrey),
//         ),
//       ),
//       onChanged: onChanged,
//       validator: validator,
//     );
//   }
// }
