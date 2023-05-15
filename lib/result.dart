import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final _score;
  final Function resetQuiz;
  var textColor;

  Result(this._score, this.resetQuiz);

  String get setResultDisplay {
    var _scoreText = "";
   print("qustioni" + _score.toString());
    if (_score == 0) {
      _scoreText = "you scored :- " + _score.toString() + " your dumb!";
      textColor = Colors.red;
    }
    if (_score == 1) {
      _scoreText = "you scored :- " + _score.toString() + " you can do better!";
      textColor = Colors.yellow;
    }
    if (_score == 2) {
      _scoreText = "you scored :- " + _score.toString() + " my maaaaan!";
      textColor = Colors.green;
    }
    if (_score == 3) {
      _scoreText = "you scored :- " + _score + " wait whaaaaat!";
      textColor = Color.fromARGB(221, 76, 75, 175);
    }

    return _scoreText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(50),
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        children: [
          Center(
              child: Text(
            setResultDisplay,
            style: TextStyle(fontSize: 40, color: Colors.blue),
            textAlign: TextAlign.center,
          )),
          ElevatedButton(
              child: Text(
                "try again and again",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              style: TextButton.styleFrom(
                  primary: textColor,
                  onSurface: Colors.green,
                  shadowColor: Colors.black),
              onPressed: resetQuiz)
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
