import 'package:flutter/material.dart';

class AnswerButtons extends StatelessWidget {
  final String buttonName;
  final Function() AnswerQuestion;
  var dificulty;
  Color color = Colors.green;
  AnswerButtons(this.buttonName, this.AnswerQuestion, this.color);

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        style:
            ElevatedButton.styleFrom(primary: color, shadowColor: Colors.black),
        child: Text(
          buttonName,
          style: TextStyle(fontSize: 20),
        ),
        onPressed: AnswerQuestion,
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.grey,
              Colors.black,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(25.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.pink.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ]),
    );
  }
}
