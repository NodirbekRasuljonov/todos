import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyProvider extends ChangeNotifier {
  GlobalKey key = GlobalKey<FormState>();
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
      user= await auth.createUserWithEmailAndPassword(
          email: emailcontroller.text, password: passwordcontroller.text);
      debugPrint("Welcome");
    } catch (e) {
      debugPrint("salom");
    }
  }
}
