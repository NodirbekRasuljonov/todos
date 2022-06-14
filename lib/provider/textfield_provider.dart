import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyProvider extends ChangeNotifier {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmcontroller = TextEditingController();
  TextEditingController loginemail = TextEditingController();
  TextEditingController loginpass = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  UserCredential? user;

  Future signUp({required BuildContext context}) async {
    try {
      debugPrint("salom");
      user = await auth.createUserWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );
    } catch (e) {
      debugPrint("Dont");
    }
  }

  Future logIn(
      {required BuildContext context,
      required TextEditingController controller1,
      required TextEditingController controller2}) async {
    try {
      user = await auth.signInWithEmailAndPassword(
        email: controller1.text,
        password: controller2.text,
      );

      Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
    } catch (e) {
      debugPrint("Error :$e");
    }
  }
}
