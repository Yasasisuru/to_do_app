import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoTitle extends StatelessWidget {
  final String taskName;
  final bool taskComplete;

Function(bool?)? onChanged;


   ToDoTitle({super.key,required this.taskName,required this.taskComplete,required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,top: 25,right: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(14)),
        child: Row(
          children: [
              Checkbox(value: taskComplete, onChanged: onChanged,
              activeColor: Colors.black,
              ),
            Text(taskName,
            style: TextStyle(fontSize: 16, color:CupertinoColors.tertiarySystemBackground  ,decoration: taskComplete? TextDecoration.lineThrough: 
            TextDecoration.none),),
          ],
        ),
      ),
    );
  }
}
