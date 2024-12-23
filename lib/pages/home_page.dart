import 'package:flutter/material.dart';
import '../pages/todo_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of to do tasks
  List toDoList = [
    ["test name", false],
  ];

  void CheckboxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text("TO DO"),
        elevation: 3,
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
