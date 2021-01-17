import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerquestion;
  final Function x;

  Answer(this.answerquestion, this.x);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          answerquestion,
          style: TextStyle(fontSize: 23),
        ),
        onPressed: x,
      ),
    );
  }
}
