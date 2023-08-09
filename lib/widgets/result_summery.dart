import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultSummery extends StatelessWidget {
  const ResultSummery({super.key, required this.summery});
  final String summery;

  @override
  Widget build(BuildContext context) {
    return Text(summery,
        style: GoogleFonts.robotoSlab(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ));
  }
}
