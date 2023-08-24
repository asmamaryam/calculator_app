// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CalculatedButtons extends StatelessWidget {
  final String text;
  final int fillcolor;
  final int textcolr;
  final double textsize;
  final Function callback;
  CalculatedButtons({
    required this.text,
    required this.fillcolor,
    required this.textcolr,
    required this.textsize,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Color(fillcolor),
            foregroundColor: Color(textcolr),
          ),
          child: Text(
            text,
            style: GoogleFonts.rubik(
                textStyle: TextStyle(
              fontSize: textsize,
            )),
          ),
          onPressed: () => callback(text),
        ),
      ),
    );
  }
}
