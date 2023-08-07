import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/pages/homePage.dart';
import 'package:quizapp/pages/questions_screen.dart';
import 'package:quizapp/pages/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activescreen;
  List<String> selectedAnswers = [];
  @override
  void initState() {
    activescreen = MyhomePage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activescreen = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activescreen = ResultScreen(
          choosenAnswers: selectedAnswers,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('quiz app'),
        ),
        body: activescreen,
      ),
    );
  }
}
