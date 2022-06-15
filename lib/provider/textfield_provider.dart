import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MyProvider extends ChangeNotifier {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmcontroller = TextEditingController();
  TextEditingController loginemail = TextEditingController();
  TextEditingController loginpass = TextEditingController();

  TextEditingController taskname = TextEditingController();

  var db;

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

  void writeToDB() async {
    db = await openDatabase('tasks');
    var databasepath = await getDatabasesPath();
    String path = join(databasepath, 'demo.db');
    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
          'CREATE TABLE Test (id INTEGER PRIMARY KEY, taskname TEXT)',
        );
      },
    );
    await database.transaction((txn) async {
      int id1 = await txn.rawInsert(
        'INSERT INTO Test(taskname) VALUES("$taskname.text")',
      );
      debugPrint("INSERTED1:$id1");
    });
    List<Map> list = await database.rawQuery('SELECT * FROM Test');
    print(list);
  }
}
