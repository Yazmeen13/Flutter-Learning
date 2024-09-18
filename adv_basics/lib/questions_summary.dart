import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: data['correct_answer'] == data['user_answer']
                            ? const Color.fromARGB(255, 127, 187, 240)
                            : const Color.fromARGB(255, 248, 112, 225),
                        borderRadius: BorderRadius.circular(100)),
                    child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 235, 203, 253),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            data['user_answer'] as String,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 207, 128, 231),
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            data['correct_answer'] as String,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 96, 184, 219),
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 5),
                        ]),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
