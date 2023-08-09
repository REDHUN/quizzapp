import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quizapp/pages/result_screen.dart';
import 'package:quizapp/widgets/correctanduseranser.dart';
import 'package:quizapp/widgets/result_identifier.dart';
import 'package:quizapp/widgets/resultscreen_countbox.dart';

class QuestionSummery extends StatelessWidget {
  const QuestionSummery(this.summeryData, {super.key});
  final List<Map<String, Object>> summeryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summeryData
              .map(
                (data) => Row(
                  children: [
                    ResultscreenCountbox(
                        count:
                            ((data['question index'] as int) + 1).toString()),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Resultidentifier(
                              identifier: data['question'] as String),
                          const SizedBox(
                            height: 5,
                          ),
                          CorrectUserAnswer(
                              correctuseranswer: data['user answer'] as String),
                          CorrectUserAnswer(
                              correctuseranswer:
                                  data['correct answer'] as String),
                        ],
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
