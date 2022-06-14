import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/notification_service/notification_service.dart';
import 'package:todos/provider/textfield_provider.dart';
import 'package:todos/routes/my_routes.dart';
import 'package:firebase_core/firebase_core.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await NotificationService().initNotification();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MyProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyRoute _myroute = MyRoute();
    return MaterialApp(
      title: 'Notification',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _myroute.onGenerateRoute,
      initialRoute: '/main',
    );
  }
}
