import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/core/constants/color_const.dart';
import 'package:todos/core/constants/radius_const.dart';
import 'package:todos/core/constants/size_const.dart';
import 'package:todos/provider/textfield_provider.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  TextEditingController loginemail=TextEditingController();
  TextEditingController loginpass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                child: Image.asset(
                  'assets/images/splashshape.png',
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.22,
                left: MediaQuery.of(context).size.height * 0,
                right: MediaQuery.of(context).size.height * 0.0129,
                child: Text(
                  'Welcome back',
                  style: TextStyle(
                    fontSize: SizeConst.large,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.17,
                left: MediaQuery.of(context).size.height * 0.056,
                right: MediaQuery.of(context).size.height * 0.0156,
                child: Image.asset(
                  'assets/images/loginpage.png',
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.55,
                left: MediaQuery.of(context).size.height * 0.02,
                right: MediaQuery.of(context).size.height * 0.02,
                child: TextFormField(
                  controller: context.watch<MyProvider>().loginemail,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(
                        RadiusConst.medium,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(
                        RadiusConst.medium,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.65,
                left: MediaQuery.of(context).size.height * 0.02,
                right: MediaQuery.of(context).size.height * 0.02,
                child: TextFormField(
                  controller: context.watch<MyProvider>().loginpass,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(
                        RadiusConst.medium,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(
                        RadiusConst.medium,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.height * 0.02,
                top: MediaQuery.of(context).size.height * 0.745,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      color: ColorConst.kPrimaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.82,
                bottom: MediaQuery.of(context).size.height * 0.11,
                left: MediaQuery.of(context).size.height * 0.02,
                right: MediaQuery.of(context).size.height * 0.02,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: ColorConst.kPrimaryColor),
                  onPressed: () {
                   context.read<MyProvider>().logIn(context: context, controller1: loginemail, controller2: loginpass);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: SizeConst.medium,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.06,
                left: MediaQuery.of(context).size.height * 0.1,
                child: Text(
                  "Don't have an account ?",
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.04,
                right: MediaQuery.of(context).size.height * 0.13,
                child: TextButton(
                  child: Text('Sign up'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
