import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //index for the questions from the question array
  var _quesInd = 0;

  var _question = [
    {
      'questionText': 'Who is your favourite streamer?',
      'answers': ['Tyler1', 'XQC', 'LVNDMARK', 'AquaFPS']
    },
    {
      'questionText': 'Who is your favourite artist?',
      'answers': ['Drake', 'Young Thug', 'Post Malone', 'Mr.Glock']
    },
    {
      'questionText': 'What is your favourite type of car?',
      'answers': ['Tesla', 'Bugatti', 'McClaren', 'Ferrari']
    }
  ];

  void _answerQuestion() {
    //setState will rebuild the build function so that the values will be updated
    setState(() => {_quesInd++});
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World!'),
          foregroundColor: Colors.purple,
          backgroundColor: Colors.white12,
        ),

        //ternary operator used to determine if the index value for question has gone out of range
        body: _quesInd != _question.length
            ? Quiz(_answerQuestion, _question, _quesInd)
            : Result(),
      ),
    );
  }
}
