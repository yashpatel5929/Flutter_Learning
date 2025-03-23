

import 'package:flutter/cupertino.dart';
import 'package:flutter_learning/data/questions.dart';
import 'package:flutter_learning/options_selectors.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizQuestions extends StatefulWidget {
  const QuizQuestions({super.key , required this.answerSelector});

  final Function(String answerSelector) answerSelector;
  @override
  State<StatefulWidget> createState() {

     return _QuizQuetions();
  }

}


class _QuizQuetions extends State<QuizQuestions> {

  var currentQuestionIndex = 0;

  void nextQuestion(String answer) {
    widget.answerSelector(answer);
    setState(() {

       currentQuestionIndex++;
    });
  }


  @override
  Widget build(BuildContext context) {
    final currentQuestions = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestions.questions , style: GoogleFonts.lato(
          color:  const Color.fromARGB(255, 255, 255,255),
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),textAlign: TextAlign.center,),
            const SizedBox(height: 30),
            ...currentQuestions.shuffleListOfAnswer().map((answer) {
              return OptionsSelector(optionsForAnswer: answer, onOptionSelection: () {
                nextQuestion(answer);
              });
            }
             )
          ],
        ),
      ),
    );
  }

}