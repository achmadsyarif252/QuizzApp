import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function answerQuesiton;
  final List<Map<String, Object>> question;
  Quiz({this.question, this.answerQuesiton, this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['question'],
        ),
        ...(question[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuesiton(
                    answer['score'],
                  ),
              answer['text']);
        }).toList(),
      ],
    );
  }
}
