import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String answerText;
  Answer(this.handler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: RaisedButton(
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: handler,
        color: Colors.blue.shade200,
      ),
    );
  }
}
