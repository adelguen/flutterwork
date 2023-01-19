import 'package:flutter/material.dart';
import './question.dart';
import '/response.dart';


class Quizz extends StatelessWidget {
  int questionIndex=0;
 final List questions;
 Function getReponse;
 Quizz({@required this.questions , @required this.questionIndex  , @required  this.getReponse}) ;

  @override
  Widget build(BuildContext context) {
    return      Column(
        children: [  Question(question:questions[questionIndex]['Question'] as String)
           ,
           ...(questions[questionIndex]['reponses']
           as List<Map>)
           .map((rep) => 
           Response  ( 
              response : rep,
              getReponse: getReponse,

            
           ))

           
           ],
          

      );
     
      

  
}
}
