import 'package:flutter/material.dart';

class ToDoTitle extends StatelessWidget {
  final String taskName;
  final bool taskComplete;

Function(bool?)? onChanged;


   ToDoTitle({super.key,required this.taskName,required this.taskComplete,required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
              Checkbox(value: taskComplete, onChanged: onChanged),
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(14)),
      ),
    );
  }
}
