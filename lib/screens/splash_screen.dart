import 'package:flutter/material.dart';
import 'package:todos/core/constants/color_const.dart';
import 'package:todos/core/constants/size_const.dart';
import 'package:todos/core/constants/text_const.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              child: Image.asset('assets/images/splashshape.png'),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.236,
              left: MediaQuery.of(context).size.height * 0.112,
              right: MediaQuery.of(context).size.height * 0.11529,
              bottom: MediaQuery.of(context).size.height * 0.406,
              child: Image.asset('assets/images/splashscreen.png'),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.57,
              left: MediaQuery.of(context).size.height * 0.07,
              right: MediaQuery.of(context).size.height * 0.063,
              bottom: MediaQuery.of(context).size.height * 0.38,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.01,
                width: MediaQuery.of(context).size.height * 0.242,
                alignment: Alignment.centerLeft,
                child: Text(
                  TextConst.todo,
                  style: TextStyle(
                      fontSize: SizeConst.large, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.62,
              left: MediaQuery.of(context).size.height * 0.07,
              right: MediaQuery.of(context).size.height * 0.063,
              bottom: MediaQuery.of(context).size.height * 0.23,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.077,
                width: MediaQuery.of(context).size.height * 0.242,
                alignment: Alignment.center,
                child: Text(
                  TextConst.splashscreendesc,
                  style: TextStyle(fontSize: SizeConst.medium),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.06,
              left: MediaQuery.of(context).size.height * 0.024,
              right: MediaQuery.of(context).size.height * 0.024,
              top: MediaQuery.of(context).size.height * 0.85,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: ColorConst.kPrimaryColor,
                  textStyle: TextStyle(
                    fontSize: SizeConst.medium,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () {},
                child: Text(TextConst.getstarted),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
