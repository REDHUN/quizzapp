import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/pages/homePage.dart';
import 'package:quizapp/widgets/question_summery.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;
  List<Map<String, Object>> getSummeryData() {
    final List<Map<String, Object>> summery = [];
    for (var i = 0; i < choosenAnswers.length; i++) {
      summery.add({
        'question index': i,
        'question': questions[i].text,
        'correct answer': questions[i].answers[0],
        'user answer': choosenAnswers[i],
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
        height: (MediaQuery.of(context).size).height,
        width: (MediaQuery.of(context).size).width,
        margin: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
              'Correct answers $numofcorrectanswer of $numoftotalanswer questions'),
          const SizedBox(
            height: 19,
          ),
          QuestionSummery(summaryData),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(onPressed: () {}, child: const Text('restart the quiz'))
        ]),
      ),
    );
  }
}
