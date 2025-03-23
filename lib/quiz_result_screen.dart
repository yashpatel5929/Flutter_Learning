

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/data/questions.dart';
import 'package:flutter_learning/quiz_answer_list.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizResultScreen extends StatelessWidget {

  const QuizResultScreen({super.key , required this.answerList});


  final List<String> answerList;

  List<Map<String , Object>> getSummaryList() {
    final List<Map<String , Object>> summaryList = [];

    for(var i = 0 ; i < answerList.length ; i++) {
      summaryList.add(
        {
            'question_index' : i,
          'question': questions[i].questions,
          'correct_answer': questions[i].options[0],
          'user_answer': answerList[i]
        }
      );
    }

    return summaryList;
  }

  @override
  Widget build(BuildContext context) {

    final summaryData = getSummaryList();
    final correctAnswer = summaryData.where((element) {
      return element['correct_answer'] == element['user_answer'];
    }).length;
    final totalAnswer = questions.length;
     return SizedBox(
       width: double.infinity,
       child: Container(
         margin: EdgeInsets.all(40),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("You answered $correctAnswer out of $totalAnswer questions correctly" , style : GoogleFonts.lato(
                 color:  const Color.fromARGB(255, 255, 255,255),
                 fontSize: 15,
                 fontWeight: FontWeight.w500
             )),
             const SizedBox(height: 30,),
             QuizAnswerList(summaryList: summaryData),
             const SizedBox(height: 30,),
             ElevatedButton(onPressed:() {}, child: Text("Restart Quiz"))
           ],
         ),
       ),
     );
  }
}