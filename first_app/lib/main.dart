import 'package:flutter/material.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {

  MyApp();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex=0;

  final _questions= [
    {"Question" : "What language usede with Flutter","reponses" :[]},
    {"Question" : "What is the main component in  Flutter Application ","reponses" :[]},
    {"Question" : "When First Flutter Version where relesased ","reponses" :[]}
  ];

void _getreponse(){
   print (" reponse selectionnée !") ;
   if(_questionIndex <  _questions.length-1){
   setState(() {
    
     _questionIndex++;
   });
   }
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
          ElevatedButton(onPressed:  _getreponse, child: const Text ('reponse 1')),
          ElevatedButton(onPressed: _getreponse, child: const Text ('reponse 2')),
          ElevatedButton(onPressed: _getreponse, child: const Text ('reponse 3')),
],
      ),
      )
      
    
    );

  }
}
