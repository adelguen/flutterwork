import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Reset extends StatelessWidget {
  int  score;
  bool state;
  final Function resetstate;

   Reset({this.resetstate });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () { 
      print('test');
      resetstate();}, 
      child: const Text ('Reset' ));
          
  }
}