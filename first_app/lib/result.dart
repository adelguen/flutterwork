import 'package:flutter/material.dart';



class Result extends StatelessWidget {
  int inputscore;
 /* int _score;
   result(int inputScore ){
   this._score=inputScore;
}*/
Result({@required this.inputscore}) ;
  @override
  Widget build(BuildContext context) {
    return Center(

        child: Text("Resultat:   $inputscore "),
      );

  }
}