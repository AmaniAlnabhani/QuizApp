import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget{
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
  const Quiz({super.key});

}
class _QuizState extends State<Quiz>{
  //? mean maybe activescreen be null
  //Widget ?activeScreen ;
 var activeScreen='start-screen';
  /*@override
  void initState() {
    activeScreen=StartScreen(switchScreen);
    super.initState();
  }*/

  void switchScreen(){
    setState(() {
      activeScreen='questions_screen';
    });
  }
  @override
  Widget build(Object context) {
    return MaterialApp(
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
          //==  check equality operation
          //: mean else
          //? if true do ...
          child:activeScreen == 'start-screen'
          ? StartScreen(switchScreen) 
          : const QuestionsScreen(),),
      ),
  );
  }

}