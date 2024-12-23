import 'package:flutter/material.dart';
import '../pages/todo_title.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        
        title: Text("TO DO"),
        elevation: 3,
      ),

      body: ListView(
        children: [
          ToDoTitle(
            taskName: "test",
            taskComplete: true,
            onChanged: (p0) {
              
            },
          ),
        ],
      ),
    );
  }
}