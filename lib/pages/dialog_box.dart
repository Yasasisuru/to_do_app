import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do_app/pages/buttens.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

   DialogBox({super.key, required this.controller,required this.onCancel,required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      content: Container(
        height: 80,
        width: double.infinity,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                button(onPressed: onSave, text: "Save"), // save
                button(onPressed: onCancel, text: "Cancel"), // save
              ],
            )
          ],
        ),
      ),
    );
  }
}
