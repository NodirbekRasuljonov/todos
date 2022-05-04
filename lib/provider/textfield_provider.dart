import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyProvider extends ChangeNotifier{
  GlobalKey key=GlobalKey<FormState>();
  TextEditingController namecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController confirmcontroller=TextEditingController();

  FirebaseAuth auth=FirebaseAuth.instance;

  Future signUp({required BuildContext context})async {
    try {
      await auth.createUserWithEmailAndPassword(email: emailcontroller.text
      , password: confirmcontroller.text
      );
      debugPrint("Welcome");
      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);

    } catch (e) {
      debugPrint("salom");

       
    }
  }


}