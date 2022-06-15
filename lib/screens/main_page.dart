import 'package:flutter/material.dart';
import 'package:todos/core/constants/color_const.dart';
import 'package:todos/screens/add_task_page.dart';
import 'package:todos/screens/delete_task.dart';
import 'package:todos/screens/tasks_page.dart';
import 'package:todos/screens/update_task.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentindex = 0;
  List<Widget> pages=[TasksPage(),
    AddTaskPage(),
    UpdateTaskPage(),
    DeleteTaskPage()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        showSelectedLabels: true,

        onTap: (int) {
          currentindex = int;
          setState(() {});
          debugPrint("index $currentindex");
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: currentindex == 0
                    ? ColorConst.kPrimaryColor
                    : Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add,
                  color: currentindex == 1
                      ? ColorConst.kPrimaryColor
                      : Colors.black),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.update,
                  color: currentindex == 2
                      ? ColorConst.kPrimaryColor
                      : Colors.black),
              label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete,
                color: currentindex == 3
                    ? ColorConst.kPrimaryColor
                    : Colors.black),
            label: '',
          ),
        ],
      ),
    );
  }
}
