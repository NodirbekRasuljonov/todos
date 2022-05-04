import 'package:flutter/material.dart';
import 'package:todos/core/constants/size_const.dart';
import 'package:todos/core/constants/text_const.dart';
import 'package:todos/provider/textfield_provider.dart';
import 'package:todos/widgets/elevated_button.dart';
import 'package:todos/widgets/textfield.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,

        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset('assets/images/splashshape.png'),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.height * 0.103,
                  top: MediaQuery.of(context).size.height * 0.225,
                  right: MediaQuery.of(context).size.height * 0.091,
                  child: Text(
                    'Welcome     onboard!',
                    style: TextStyle(
                      fontSize: SizeConst.medium,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.height * 0.103,
                  right: MediaQuery.of(context).size.height * 0.091,
                  top: MediaQuery.of(context).size.height * 0.263,
                  child: const Text(
                    'Some Description more .....',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.341,
                  left: MediaQuery.of(context).size.height * 0.022,
                  right: MediaQuery.of(context).size.height * 0.022,
                  bottom: MediaQuery.of(context).size.height * 0.232,
                  child: Form(
                    key: context.watch<MyProvider>().key,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyTextField.textFormField(
                          controller: context.watch<MyProvider>().namecontroller,
                          hint: 'Enter your full name',
                        ),
                        MyTextField.textFormField(
                          controller: context.watch<MyProvider>().emailcontroller,
                          hint: 'Enter Email',
                        ),
                        MyTextField.textFormField(
                          controller:
                              context.watch<MyProvider>().passwordcontroller,
                          hint: 'Enter Password',
                        ),
                        MyTextField.textFormField(
                          controller: context.watch<MyProvider>().confirmcontroller,
                          hint: 'Confim Pasword',
                        )
                      ],
                    ),
                    
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.82,
                  bottom: MediaQuery.of(context).size.height * 0.1,
                  left: MediaQuery.of(context).size.height * 0.031,
                  right: MediaQuery.of(context).size.height * 0.031,
                  child: MyElevatedButton.myButton(
                    text: TextConst.register,
                    route: '/login',
                    context: context,
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.height * 0.1,
                  right: MediaQuery.of(context).size.height * 0.1,
                  bottom: MediaQuery.of(context).size.height * 0.03,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'already have an account?',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      TextButton(
                        onPressed: () {
                          context.read<MyProvider>().signUp(context: context);
                        },
                        child: const Text('Sign in'),
                      ),
                    ],
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
