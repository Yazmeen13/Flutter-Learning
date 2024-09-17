import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return const Text("Questions scnre");
  }
}
