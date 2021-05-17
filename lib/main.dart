import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }


  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 2 chosen'),
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Another answer which is different');
              },
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
