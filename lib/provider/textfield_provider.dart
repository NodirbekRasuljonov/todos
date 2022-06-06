import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:todos/widgets/snackbar.dart';

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
      debugPrint("salom");
      user= await auth.createUserWithEmailAndPassword(
          email: emailcontroller.text, password: passwordcontroller.text,
          );
          Navigator.pushNamed(context, '/login');

      
    } catch (e) {
      debugPrint("Dont");
    }
  }
}
