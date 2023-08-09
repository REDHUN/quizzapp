import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ResultscreenCountbox extends StatelessWidget {
  const ResultscreenCountbox({super.key, required this.count});
  final String count;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 133, 128, 88),
          shape: BoxShape.circle,
        ),
        child: Center(child: Text(count)),
      ),
    );
  }
}
