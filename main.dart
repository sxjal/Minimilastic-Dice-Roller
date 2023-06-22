import 'package:flutter/material.dart';
import 'package:dice/gradientcontainer.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.white,
        body: GradientContainer(
          [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 0, 0, 0),
          ],
        ),
      ),
    ),
  );
}
