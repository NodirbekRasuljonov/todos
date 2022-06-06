import 'package:flutter/material.dart';

class MySnackBar {
  static ScaffoldMessenger scaffoldMessenger() {
    return ScaffoldMessenger(
      child: SnackBar(
        content: Text('Welcome'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
