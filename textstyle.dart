import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  //accepting arguments
  //one way

  const StyledText(this.displaytext, this.size, {super.key});
  final String displaytext;
  final double size;

  //another way
  //StyledText(text, {super.key}) : displaytext = text;

  @override
  Widget build(context) {
    return Text(
      //'Text inside another class withing a class',

      displaytext,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size,
        color: Colors.white,
        fontFamily: 'Roboto',
      ),
    );
  } //build
} //StyledText
