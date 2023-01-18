import 'package:flutter/material.dart';
import './question.dart';

class Quizz extends StatelessWidget {
  int questionIndex=0;
 final List questions;
 Function getReponse;
 Quizz({@required this.questions , @required this.questionIndex  , @required  this.getReponse}) ;

  @override
  Widget build(BuildContext context) {
    return      Column(
        children: [  Question(questions:questions,questionIndex:questionIndex,getReponse:getReponse)
           ,
           ...(questions[questionIndex]['reponses']
           as List<Map>)
           .map((rep) => 
           ElevatedButton(onPressed: ()=> getReponse(rep['score']), 
           child: Text (rep['text'] as String )))
           .toList()
           
           ],
          

      );
     
      

  
}
}
