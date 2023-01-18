import 'package:flutter/material.dart' ;


class Question extends StatelessWidget {
   int questionIndex=0;
 List questions;
 Function getReponse;
  Question({@required this.questions , @required this.questionIndex  , @required  this.getReponse});

  @override
  Widget build(BuildContext context) {
    return Text(questions[questionIndex]['Question'] as String );  
  }
}