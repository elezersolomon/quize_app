import 'package:flutter/material.dart';
import "./question.dart";
import 'answerButtons.dart';
import './models/Q&A.dart';

class Quiz extends StatelessWidget {
  final questionIndex;

  final _answerQuestion;

  Quiz(this.questionIndex, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(QnA[questionIndex]['question']),
          ...(QnA[questionIndex]['answers'] as List<String>).map((answer) {
            return AnswerButtons(
                answer, () => _answerQuestion(answer), Colors.green);
          }).toList(),
        ],
      ),
    );
  }
}
