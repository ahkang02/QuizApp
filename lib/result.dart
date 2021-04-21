import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;

  Result(this.resultScore, this.reset);

  String get resultPhrase {
    var resultText = 'You did It!';
    if (resultScore <= 10) {
      resultText = "Unfortunately You Fail";
    } else if (resultScore > 10 && resultScore <= 20) {
      resultText = "You Passed !!!";
    } else {
      resultText = 'You did It';
    }
    resultText = resultText + "\nYou Score ${resultScore}/30";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 200),
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              child: Text('Restart Quiz'),
              color: Colors.blue.shade200,
              onPressed: reset,
            ),
          ],
        ),
      ),
    );
  }
}
