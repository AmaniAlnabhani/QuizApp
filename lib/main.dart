import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main(){
  runApp( MaterialApp(
      home:Scaffold(
        body:Container(
          decoration: const BoxDecoration(gradient: LinearGradient(
            colors:[
              Color.fromARGB(255, 243, 176, 19),
              Color.fromARGB(200, 250, 191, 74),
              Color.fromARGB(255, 238, 201, 123),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),),
          child:const StartScreen(),),
      ),
  ));
}