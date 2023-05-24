// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import '../../constants/routes.dart';
import '../../helper/app_state_helper.dart';
import '../../model/quiz_screen_argument_model.dart';

class RestartButton extends StatelessWidget {
  const RestartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppState.finalScore = 0;
        Navigator.pushReplacementNamed(context, quizScreenRoute,
            arguments:
                QuizScreenArgumentModel(questionNumber: 1, totalScore: 0));
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(20)),
        child: Text(
          "Restart",
          style: TextStyle(
              color: gradientColor1, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
