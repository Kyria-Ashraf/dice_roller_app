import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  //what to display on the screen
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer([
          Colors.purple,
          Colors.deepPurple,
          Color.fromARGB(255, 33, 54, 243),
        ]),
      ),
    ),
  );
}
