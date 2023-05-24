// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';

class QuizAppHeadingText extends StatelessWidget {
  const QuizAppHeadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Quiz App",
      style: TextStyle(color: white, fontSize: 40, fontWeight: FontWeight.bold),
    );
  }
}
