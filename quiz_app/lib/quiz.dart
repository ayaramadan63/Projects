import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionindex;
  final Function answerques;

  Quiz(this.question, this.questionindex, this.answerques);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionindex]['questionText']),
        ...(question[questionindex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer['text'], () => answerques(answer['score']));
        }).toList(),
      ],
    );
  }
}
