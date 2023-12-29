import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  //startQuiz type function dont take argement and dont return anything
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300,
          color: const Color.fromARGB(101, 255, 255, 255),),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter in fun way',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
            ), icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
           
          ),
        ],
      ),
    );
  }
}
