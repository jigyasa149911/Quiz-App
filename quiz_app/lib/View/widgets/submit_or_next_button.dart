// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import '../../constants/routes.dart';
import '../../helper/app_state_helper.dart';
import '../../model/quiz_screen_argument_model.dart';

class NextOrSubmitButton extends StatelessWidget {
  bool isOptionTapped;
  int questionNumber;
  NextOrSubmitButton(
      {required this.isOptionTapped, required this.questionNumber, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (questionNumber == 6) {
          Navigator.pushReplacementNamed(
            context,
            finalScoreScreenRoute,
          );
        } else {
          Navigator.pushReplacementNamed(context, quizScreenRoute,
              arguments: QuizScreenArgumentModel(
                  questionNumber: questionNumber + 1,
                  totalScore: AppState.finalScore));
        }
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            color: isOptionTapped ? buttonColor : buttonColor.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          questionNumber == 6 ? "Submit" : "Next",
          style: TextStyle(
              color: gradientColor1, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
