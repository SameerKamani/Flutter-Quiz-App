// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2_quiz_app/Questions_screen.dart';

import "package:flutter_application_2_quiz_app/start_screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quiz_state();
  }
}

class _Quiz_state extends State<Quiz> {
  Widget? active_screen;

  @override
  void initState() {
    active_screen = start_screen_widgets(switch_screen);
    super.initState();
  }

  void switch_screen() {
    setState(() {
      active_screen = const Question_Screen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 123, 3, 145)),
              child: Center(child: active_screen))),
    );
  }
}
