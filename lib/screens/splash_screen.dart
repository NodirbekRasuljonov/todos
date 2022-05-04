import 'package:flutter/material.dart';
import 'package:todos/core/constants/color_const.dart';
import 'package:todos/core/constants/size_const.dart';
import 'package:todos/core/constants/text_const.dart';
import 'package:todos/widgets/elevated_button.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  PageStorageBucket _bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: _bucket,
        child: SizedBox(
          key: const PageStorageKey('splash'),
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
                    style: TextStyle(
                      fontSize: SizeConst.medium,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.06,
                left: MediaQuery.of(context).size.height * 0.024,
                right: MediaQuery.of(context).size.height * 0.024,
                top: MediaQuery.of(context).size.height * 0.85,
                child: MyElevatedButton.myButton(
                  text: TextConst.getstarted,
                  route: '/signup',
                  context: context,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
