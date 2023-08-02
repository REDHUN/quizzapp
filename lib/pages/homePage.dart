import 'package:flutter/material.dart';

class MyhomePage extends StatefulWidget {
  const MyhomePage(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.blueAccent,
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/quiz-logo.png',
                color: Colors.white12,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            OutlinedButton.icon(
              onPressed: widget.startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              label: const Text('Start Quiz'),
              icon: const Icon(Icons.arrow_circle_right),
            ),
          ],
        ));
  }
}
