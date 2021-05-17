import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
      if(resultScore <= 9) {
        resultText = 'You scored lower than 9!';
      } else if (resultScore <= 15) {
        resultText = 'You scored lower than 15!';
      } else if (resultScore <= 24 ) {
        resultText = 'You scored lower than 24!';
      } else {
        resultText = 'You scored above everyone!';
      }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
