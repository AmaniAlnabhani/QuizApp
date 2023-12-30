import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswers});
  final List<String> choosenAnswers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children:  [
            const Text('You answer X of Y question correctly'),
            const SizedBox(height: 30,),
            const Text('List answer and questions'),
            const SizedBox(height: 30,),
            TextButton(
                onPressed: (){},
                child: const Text('restart quiz'))


          ],
        ),
      ),
    );
  }
}
