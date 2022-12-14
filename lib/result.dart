import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result({this.resultScore, this.resetQuiz});

  String get resultPhrase {
    String resultText = 'You did it';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'Are you...strange?';
    } else {
      resultText = 'You are so Bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 46.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              resetQuiz();
            },
            child: Text('Reset Quiz'),
          ),
        ],
      ),
    );
  }
}
