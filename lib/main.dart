import 'package:flutter/material.dart';

import 'quiz.dart';
import 'answer.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;
  final _questions = [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {'text': 'Pink', 'score': 10},
        {'text': 'Red', 'score': 9},
        {'text': 'Black', 'score': 7},
        {'text': 'White', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Dog', 'score': 7},
        {'text': 'Cat', 'score': 10},
        {'text': 'Hamster', 'score': 3}
      ],
    },
    {
      'questionText': 'What\'s My Name?',
      'answers': [
        {'text': 'Zhi Hong', 'score': 10},
        {'text': 'Dog', 'score': 0},
        {'text': 'Zhi Fung', 'score': 5},
        {'text': 'Zhi Chong', 'score': 3}
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answer(int score) {
    _totalScore += score;

    if (_questionIndex > _questions.length) {
      setState(() {
        _questionIndex = 0;
      });
    } else {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
    print(_questionIndex);
  }

  @override
  // Need to add Methods
  // Build is a method
  // Method return widget
  Widget build(BuildContext context) {
    // BuildContext = Type
    // Material App take in Arguments
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome to Quizzzies',
          ),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answer: _answer,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
