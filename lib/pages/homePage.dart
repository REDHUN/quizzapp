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
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              label: Text('Start Quiz'),
              icon: Icon(Icons.arrow_circle_right),
            ),
          ],
        ));
  }
}
