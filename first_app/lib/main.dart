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
    {"Question" : "What language usede with Flutter","reponses" :[
      {"text": "javascript", "score":0},
      {"text": "Java", "score":0},
      {"text": "Dart", "score":4},
      {"text": "GO", "score":0},
    ]},
    {"Question" : "What is the main component in  Flutter Application ","reponses" :[
      {"text": "Component", "score":0},
      {"text": "Widget", "score":4},
      {"text": "Activity", "score":0},
      {"text": "Service", "score":0},

    ]},
    {"Question" : "When First Flutter Version where relesased ","reponses" :[
      {"text": "2010", "score":0},
      {"text": "2015", "score":0},
      {"text": "2018", "score":4},
      {"text": "2020", "score":0},
    ]}
  ];

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

  void _getreponse(){
   print (" reponse selectionnée !") ;
   if(_questionIndex <  _questions.length-1){
   setState(() {
    
     _questionIndex++;
   });
   }
}
}
