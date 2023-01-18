
import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  final Map response;
  final Function  getReponse;
   Response({@required this.response,this.getReponse });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: ()=> getReponse(response['score']), 
           child: Text (response['text'] as String ));
          
  }
}