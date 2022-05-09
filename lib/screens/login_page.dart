import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/core/constants/size_const.dart';
import 'package:todos/provider/textfield_provider.dart';
import 'package:todos/widgets/textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: SizedBox(
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset('assets/images/splashshape.png'),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.226,
                  left: MediaQuery.of(context).size.height * 0.103,
                  right: MediaQuery.of(context).size.height * 0.129,
                  bottom: MediaQuery.of(context).size.height * 0.565,
                  child: Text(
                    "Welcome Back!",
                    style: TextStyle(
                        fontSize: SizeConst.medium, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.280,
                  left: MediaQuery.of(context).size.height * 0.056,
                  right: MediaQuery.of(context).size.height * 0.156,
                  bottom: MediaQuery.of(context).size.height * 0.365,
                  child: Image.asset('assets/images/loginpage.png'),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.480,
                  left: MediaQuery.of(context).size.height * 0.034,
                  bottom: MediaQuery.of(context).size.height * 0.208,
                  right: MediaQuery.of(context).size.height*0.034,
                  child: Container(
                    color: Colors.red,
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.height * 0.1,
                    child: Column(
                      children: [
                        MyTextField.textFormField(controller: context.watch<MyProvider>().loginemail, hint: 'Enter Your Email'),
                
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
