import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/main.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double
          .infinity, // text is centered without the container i just wanted to write it just because
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 40,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
