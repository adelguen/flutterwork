import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:   Scaffold (  
        appBar:AppBar(title: const Text ('Quiz App ')), 
        body: 
      Column(
        children: const [
           Text('\n Question '),
          ElevatedButton(onPressed: null, child: Text ('reponse 1')),
          ElevatedButton(onPressed: null, child: Text ('reponse 2')),
          ElevatedButton(onPressed: null, child: Text ('reponse 3')),


        ],
      ),
      )
      
    
    );
  }
}
