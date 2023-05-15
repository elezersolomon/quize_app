import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answerButtons.dart';
import "./question.dart";
import 'answerButtons.dart';
import "./quiz.dart";
import "./models/Q&A.dart";
import "./result.dart";

void main() => runApp(StartApp());

class StartApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _startAppState();
  }
}

class _startAppState extends State<StartApp> {
  var questionIndex = 0;

  var score = 0;
  void answerQuestion(answer) {
    setState(() {
      // TODO: implement setState
      print("correct answer" + QnA[questionIndex]['correctAnswer'] + answer);
      if (answer == QnA[questionIndex]['correctAnswer']) {
        print("score" + score.toString());
        score++;
      }
      print("questionIndex" + "${questionIndex}");
      questionIndex++;
    });
  }

  resetQuiz() {
    setState(() {
      questionIndex = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("my first flutter app"),
            ),
            body: questionIndex < QnA.length
                ? Container(child: Quiz(questionIndex, answerQuestion))
                : Result(score, resetQuiz)));
  }
}
