import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen(this.startQuiz , {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/applogo/quiz-logo.png', width: 300),
        const SizedBox(height: 20),
        const Text(
          "Learn Flutter the fun way!!",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
          onPressed: startQuiz,
          label: const Text('Start Quiz'),
          icon: const Icon(Icons.arrow_right),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
        )
      ],
    );
  }
}
