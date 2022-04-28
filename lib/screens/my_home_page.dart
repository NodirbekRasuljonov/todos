import 'package:flutter/material.dart';
import 'package:todos/notification_service/notification_service.dart';
import 'package:timezone/data/latest.dart' as tz;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    tz.initializeTimeZones();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          debugPrint("salom");
          await NotificationService().showNotification(
            id: 1,
            title: 'salom',
            body: 'bugun',
            minut: 1,
          );
          debugPrint('salom');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
