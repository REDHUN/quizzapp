import 'package:flutter/material.dart';
import 'package:quizapp/widgets/answer_button.dart';
import 'package:quizapp/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';



class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key,required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentIndex=0;
  
  void answerQuestion(String selectedAnswers){
    widget.onSelectAnswer(selectedAnswers);

     setState(() {
        currentIndex++;
      });
    }
  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[currentIndex];
     
    return SizedBox(
    
      width: double.infinity,
      child: Container(
        decoration: const BoxDecoration(color: Colors.green),
        height: (MediaQuery.of(context).size).height,
        width: (MediaQuery.of(context).size).width,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            
               Container(
                margin: EdgeInsets.all(10),
                 child: Text(
                  currentquestion.text,
                  style: GoogleFonts.robotoSlab(
                    color: Colors.white,
                  )
                             ),
               ),
            
            const SizedBox(
              height: 30,
            ),
            ...currentquestion.getshuffled().map(
                  (answer) =>  Container(
                    margin: const EdgeInsets.all(10),
                    child: Answer(answertext: answer, onTap: (){answerQuestion(answer);},))),
                
          ],
        ),
      ),
    );
  }
}
