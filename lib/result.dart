import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 4) {
      resultText = 'You are a RIght wing fellow';
    } else if (resultScore <= 25) {
      resultText = 'You are a Secular and more center';
    } else if (resultScore <= 30) {
      resultText = 'You are a Communist';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase,
          style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center),
    );
  }
}
