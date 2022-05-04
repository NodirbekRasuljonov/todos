import 'package:flutter/material.dart';
import 'package:todos/core/constants/color_const.dart';
import 'package:todos/core/constants/radius_const.dart';

class MyTextField {
  static TextFormField textFormField(
      {required TextEditingController controller, required String hint}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: ColorConst.textcolor),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusConst.extralarge),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(RadiusConst.extralarge),
        ),
      ),
      
    );
  }
}
