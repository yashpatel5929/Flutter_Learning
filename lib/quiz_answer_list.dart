
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizAnswerList extends StatelessWidget {
  const QuizAnswerList({super.key , required this.summaryList});


  final List<Map<String , Object>> summaryList;

  @override
  Widget build(BuildContext context) {
     return SizedBox(
       height: 400,
       child: SingleChildScrollView(
         child: Column(
           children: summaryList.map((data) {
             var isCorrect = data['correct_answer'] == data['user_answer'];
             return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Container(
                   width: 20,
                   height: 20,
                   decoration: BoxDecoration(
                     color: isCorrect ? const Color.fromARGB(245, 66, 66, 5) : const Color.fromARGB(254, 201, 155, 100),
                     borderRadius: BorderRadius.circular(100)
                   ),
                     child : Text((((data['question_index'] as int)) + 1).toString() , style: GoogleFonts.abrilFatface(
                       color:  const Color.fromARGB(255, 255, 255,255),
                       fontSize: 15,
                       fontWeight: FontWeight.bold,
                     ), textAlign: TextAlign.center,  )
                 )
                 ,
                 Expanded(child:
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text(data['question'].toString() ,  style: GoogleFonts.lato(
                         color:  const Color.fromARGB(255, 255, 255,255),
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                     ),),
                     const SizedBox(height:10),
                     Text(data['user_answer'].toString(), style: GoogleFonts.lato(
                         color:  const Color.fromARGB(255, 255, 255,255),
                         fontSize: 12,
                         fontWeight: FontWeight.w300
                     ),),
                     const SizedBox(height: 5),
                     Text(data['correct_answer'].toString(), style: GoogleFonts.lato(
                         color:  const Color.fromARGB(255, 255, 255,255),
                         fontSize: 12,
                         fontWeight: FontWeight.bold
                     ),)
                   ],
                 )

                 ),
                 const SizedBox(height: 25)
               ],
             );
           }).toList()
         ),
       ),
     );
  }



}