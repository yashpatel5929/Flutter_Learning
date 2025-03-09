


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/app_gradient_bakground.dart';
import 'package:flutter_learning/quiz_questions.dart';
import 'package:flutter_learning/splashscreen.dart';

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
      return _QuizApp();
  }

}

class _QuizApp extends State<QuizApp> {

  Widget? activeScreen;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    activeScreen = SplashScreen(switchScreen);
  }
  void switchScreen() {
    setState(() {
      activeScreen = const QuizQuestions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 78, 13, 151),
                  Color.fromARGB(255, 107, 15, 168),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child:activeScreen ,
          ),
        ),
      ),
    );
  }

}