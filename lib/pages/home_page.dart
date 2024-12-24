import 'package:flutter/material.dart';
import 'package:to_do_app/pages/dialog_box.dart';
import '../pages/todo_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of to do tasks
  List toDoList = [
   
  ];

// text controller

  final Controller = TextEditingController();

  void CheckboxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void createNew() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: Controller,
            onSave: saveTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  void saveTask() {
    setState(() {
      toDoList.add([Controller.text, false]);
    Controller.clear();
    });

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text("TO DO"),
        elevation: 3,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNew,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTitle(
            taskName: toDoList[index][0],
            taskComplete: toDoList[index][1],
            onChanged: (value) => CheckboxChanged(value, index),
          );
        },
      ),
    );
  }
}
