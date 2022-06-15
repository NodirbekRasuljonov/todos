import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/core/constants/color_const.dart';
import 'package:todos/core/constants/radius_const.dart';
import 'package:todos/provider/textfield_provider.dart';
import 'package:todos/widgets/textfield.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConst.kPrimaryColor,
        elevation: 0.0,
        title: Text("Add new task"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextFormField(
              controller: context.watch<MyProvider>().taskname,
              decoration: InputDecoration(
                  hintText: 'Add new task ...',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(RadiusConst.medium),
                      borderSide: BorderSide(color: ColorConst.kPrimaryColor))),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: ColorConst.kPrimaryColor,
              fixedSize: Size(200.0, 40.0)
            ),
            onPressed: () {
              context.read<MyProvider>().writeToDB();
            },
            child: Text(
              "Add New Task",
            ),
          ),
        ],
      ),
    );
  }
}
