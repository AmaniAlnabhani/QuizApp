import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget{
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
  const Quiz({super.key});

}
class _QuizState extends State<Quiz>{
  //list to save all answers
   List<String> selectedAnswer=[];
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
      selectedAnswer=[];
      activeScreen='questions_screen';
    });
  }
  void chooseAnswer(String answer){
    //add() to add in the list
    selectedAnswer.add(answer);
    if(selectedAnswer.length == questions.length){
      setState(() {
        activeScreen="results_screen";
      });
    }
  }

  @override
  Widget build(Object context) {
    Widget screenWidget= StartScreen(switchScreen);
    if(activeScreen == 'questions_screen'){
      screenWidget=  QuestionsScreen(
        onSelectAnswer:chooseAnswer,);}
    if(activeScreen == 'results_screen'){
      screenWidget= ResultsScreen(choosenAnswers: selectedAnswer,);
    }


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
          child:screenWidget,),
      ),
  );
  }

}