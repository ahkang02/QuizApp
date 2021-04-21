import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String newQuestion;

  Question(this.newQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          newQuestion,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ));
  }
}
