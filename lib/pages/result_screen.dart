import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/pages/homePage.dart';
import 'package:quizapp/widgets/question_summery.dart';
import 'package:quizapp/models/quiz.dart';
import 'package:quizapp/widgets/result_summery.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {super.key, required this.choosenAnswers, required this.onRestart});
  final void Function() onRestart;
  final List<String> choosenAnswers;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  List<Map<String, Object>> getSummeryData() {
    final List<Map<String, Object>> summery = [];
    for (var i = 0; i < widget.choosenAnswers.length; i++) {
      summery.add({
        'question index': i,
        'question': questions[i].text,
        'correct answer': questions[i].answers[0],
        'user answer': widget.choosenAnswers[i],
      });
    }
    return summery;
  }

  @override
  Widget build(BuildContext context) {
    final numoftotalanswer = questions.length;
    final summaryData = getSummeryData();
    final numofcorrectanswer = summaryData.where((data) {
      return data['user answer'] == data['correct answer'];
    }).length;
    return SizedBox(
      child: Container(
        decoration: const BoxDecoration(color: Colors.green),
        height: (MediaQuery.of(context).size).height,
        width: (MediaQuery.of(context).size).width,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          ResultSummery(
              summery:
                  'You answered $numofcorrectanswer out of $numoftotalanswer questions correctly !'),
          const SizedBox(
            height: 19,
          ),
          QuestionSummery(summaryData),
          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            onPressed: widget.onRestart,
            label: const Text(
              'restart the quiz',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            icon: const Icon(
              Icons.restart_alt,
              color: Colors.black,
            ),
          ),
        ]),
      ),
    );
  }
}
