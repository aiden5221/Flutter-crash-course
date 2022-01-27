import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final answerText;
  final VoidCallback selHandler;

  Answer(this.answerText, this.selHandler);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.blue, shadowColor: Colors.purple, ),
          child: Text(answerText),
          onPressed: selHandler,
      ),
    );
  }
}