import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            const Color.fromARGB(255, 83, 25, 182), Colors.blueAccent),
      ),
    ),
  );
}
