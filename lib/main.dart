import 'package:flutter/material.dart';

import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'question': 'What\'s your favourite Color ?',
      'answer': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 7},
        {'text': 'Blue', 'score': 5},
        {'text': 'Orange', 'score': 2}
      ],
    },
    {
      'question': 'What\'s your favourite Animal ?',
      'answer': [
        {'text': 'Lion', 'score': 9},
        {'text': 'Girrafe', 'score': 5},
        {'text': 'Hen', 'score': 3},
        {'text': 'Dolphin', 'score': 2}
      ],
    },
    {
      'question': 'Who\'s your favourite instructor?',
      'answer': [
        {'text': 'Max', 'score': 6},
        {'text': 'Dr.Angela', 'score': 7},
        {'text': 'Max', 'score': 7},
        {'text': 'Dr.Angela', 'score': 3}
      ],
    },
  ];
  var _questionIndex = 0;
  int _totalScore = 0;
  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuesiton(int score) {
    _totalScore += _totalScore + score;
    if (_questionIndex < _question.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else {
      print('no more question');
    }
    print(_totalScore);

    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                question: _question,
                questionIndex: _questionIndex,
                answerQuesiton: _answerQuesiton,
              )
            : Result(resultScore: _totalScore, resetQuiz: resetQuiz),
      ),
    );
  }
}
