import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),

        // Opacity(
        //   opacity: 0.9,
        //   child: Image.asset('assets/images/quiz-logo.png', width: 200)),
        const SizedBox(height: 80),
        Text(
          "Learn Flutter the fun way!",
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 224, 180, 250),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 214, 171, 248)),
          label: const Text(
            "Start Quiz",
            // style: TextStyle(
            //     fontSize: 16, color: Color.fromARGB(255, 214, 171, 248)),
          ),
          icon: const Icon(Icons.arrow_right_alt),
        ),
      ]),
    );
  }
}
