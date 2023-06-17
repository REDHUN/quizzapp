import 'package:flutter/material.dart';
import 'package:quizapp/pages/homePage.dart';

void main(List<String> args) {
  runApp(const Quizzapp());
}

class Quizzapp extends StatelessWidget {
  const Quizzapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('quiz app'),
        ),
        body: const MyhomePage(),
      ),
    );
  }
}
