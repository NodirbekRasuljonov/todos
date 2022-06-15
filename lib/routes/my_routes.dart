import 'package:flutter/material.dart';
import 'package:todos/screens/login_page.dart';
import 'package:todos/screens/main_page.dart';
import 'package:todos/screens/signup_page.dart';
import 'package:todos/screens/splash_screen.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/splash':
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      case '/signup':
        return MaterialPageRoute(
          builder: (context) =>const SignUpPage(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (context) =>  LoginPage(),
        );
         case '/main':
        return MaterialPageRoute(
          builder: (context) => MainPage(),
        );
    }
  }
}
