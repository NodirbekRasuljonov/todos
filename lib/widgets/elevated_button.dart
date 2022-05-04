import 'package:flutter/material.dart';
import 'package:todos/core/constants/color_const.dart';
import 'package:todos/core/constants/size_const.dart';
import 'package:todos/core/constants/text_const.dart';

class MyElevatedButton {
  static ElevatedButton myButton(
      {required String text,
      required String route,
      required BuildContext context}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: ColorConst.kPrimaryColor,
        textStyle: TextStyle(
          fontSize: SizeConst.medium,
          fontWeight: FontWeight.w600,
        ),
      ),
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
      },
      child: Text(text),
    );
  }
}
