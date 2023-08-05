import 'package:flutter/material.dart';
import 'package:quizapp/pages/homePage.dart';
import 'package:quizapp/pages/questions_Screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activescreen;
  @override
  void initState() {
    activescreen = MyhomePage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activescreen = const QuestionScreen();
    });
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
