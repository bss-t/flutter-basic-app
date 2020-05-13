import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyCoolApp());
}

class MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCoolAppState();
  }
}

class MyCoolAppState extends State<MyCoolApp> {
  final _questions = const [
    {
      'questionText': 'Which fucking color do you like',
      'answerText': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Saffrom', 'score': 1}
      ]
    },
    {
      'questionText': 'Which fucking animal do you like',
      'answerText': [
        {'text': 'Bear', 'score': 10},
        {'text': 'Deer', 'score': 5},
        {'text': 'Cow', 'score': 1}
      ]
    },
    {
      'questionText': 'Pick one among the following',
      'answerText': [
        {'text': 'Liberal', 'score': 10},
        {'text': 'Secular', 'score': 5},
        {'text': 'National', 'score': 1}
      ]
    }
  ];

  var questionsindex = 0;
  var _totalscore = 0;
  void _answerQuestion(int score) {
    setState(() {
      _totalscore += score;
      if (questionsindex < _questions.length) {}
      questionsindex = questionsindex + 1;
      print(questionsindex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First application'),
        ),
        body: questionsindex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionsindex: questionsindex,
                questions: _questions,
              )
            : Result(_totalscore),
      ),
    );
  }
}
