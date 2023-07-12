import 'package:flutter/material.dart';
import 'package:quizapp/models/quiz.dart';

void main(List<String> args) {
  runApp(const Quizzapp());
}

class Quizzapp extends StatelessWidget {
  const Quizzapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Quiz();
  }
}
