import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionsindex;
  final Function answerQuestion;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionsindex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionsindex]['questionText']),
        ...(questions[questionsindex]['answerText'] as List<Map<String, Object>>)
            .map((answerText) {
          return Answer(() => answerQuestion(answerText['score']), answerText['text']);
        }).toList()
      ],
    );
  }
}
