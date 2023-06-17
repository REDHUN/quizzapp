import 'package:flutter/material.dart';

class MyhomePage extends StatelessWidget {
  const MyhomePage({super.key});

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
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Start Quiz'),
            ),
          ],
        ));
  }
}
