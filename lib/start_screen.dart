// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class start_screen_widgets extends StatelessWidget {
  const start_screen_widgets(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        "assets/quiz-logo.png",
        width: 300,
        color: const Color.fromARGB(120, 0, 0, 0),
      ),

      const SizedBox(height: 80), // entering empty space for padding

      const Text("Learn Flutter",
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 40)),

      const SizedBox(height: 20), // entering empty space for padding

      OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 0, 0, 0)),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text("Start Quiz"))
    ]);
  }
}
