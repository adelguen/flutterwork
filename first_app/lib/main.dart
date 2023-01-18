import 'package:flutter/material.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  int _questionIndex=0;
  final _questions= [
    {"Question" : "What language usede with Flutter","reponses" :[]},
    {"Question" : "What is the main component in  Flutter Application ","reponses" :[]},
    {"Question" : "When First Flutter Version where relesased ","reponses" :[]}
  ];

 MyApp();
void _getreponse(){
   print (" reponse selectionnée !");
   _questionIndex++;
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:   Scaffold (  
        appBar:AppBar(title: const Text ('Quiz App ')), 
        body: 
      Column(
        children: [
           Text(_questions[_questionIndex]['Question'] ),
          ElevatedButton(onPressed: () => print('Reponse 1 selectionnée'), child: const Text ('reponse 1')),
          ElevatedButton(onPressed: () => print('Reponse 2 selectionnée'), child: const Text ('reponse 2')),
          ElevatedButton(onPressed: () => print('Reponse 3 selectionnée'), child: const Text ('reponse 3')),
],
      ),
      )
      
    
    );

  }
}
