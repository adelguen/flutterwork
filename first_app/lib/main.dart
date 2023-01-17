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
        children: [
           const Text('\n Question '),
          ElevatedButton(onPressed: () => print('Reponse 1 selectionnée'), child: const Text ('reponse 1')),
          ElevatedButton(onPressed: () => print('Reponse 2 selectionnée'), child: const Text ('reponse 2')),
         ElevatedButton(onPressed: () => print('Reponse 3 selectionnée'), child: const Text ('reponse 3')),


        ],
      ),
      )
      
    
    );
  }
}
