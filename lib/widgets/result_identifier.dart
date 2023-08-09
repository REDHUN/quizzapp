import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Resultidentifier extends StatelessWidget {
  const Resultidentifier({super.key, required this.identifier});
  final String identifier;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 10),
      child: Text(identifier,
          style: GoogleFonts.robotoSlab(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )),
    );
  }
}
