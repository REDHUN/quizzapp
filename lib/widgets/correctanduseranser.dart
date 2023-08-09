import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class CorrectUserAnswer extends StatelessWidget {
  const CorrectUserAnswer({super.key, required this.correctuseranswer});
  final String correctuseranswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Text(correctuseranswer,
          style: GoogleFonts.robotoSlab(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
