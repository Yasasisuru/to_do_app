import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
   button({super.key, required this.onPressed,required this.text});

  @override
  Widget build(BuildContext context) {
    
    return MaterialButton(onPressed: onPressed,
    color: Theme.of(context).dialogBackgroundColor,
    
    child: Text(text),
    );
  }
}
