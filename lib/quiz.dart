import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
class Quiz extends StatelessWidget {
  final VoidCallback ansQuestion;
  //this is a list of mapped strings with objects (question,answers)
  final List<Map<String,Object>> questions;
  final int questionIndex;
  Quiz(@required this.ansQuestion, @required this.questions, @required this.questionIndex);

  @override
  Widget build(BuildContext context) {
    
    
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),

        //this displays the different answers dynamically through the list above in question
        //... is a spread operator in dart
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answer, ansQuestion);
        }).toList()
      ],
    );
  }
}
