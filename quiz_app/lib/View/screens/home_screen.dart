// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/View/widgets/circular_timer.dart';
import 'package:quiz_app/View/widgets/quiz_app_heading_text_widget.dart';
import 'package:quiz_app/constants/color_constants.dart';
import 'package:quiz_app/helper/linear_gardient.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(gradient: commonLinearGradient),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: white, width: 4),
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 166, 192, 214)),
                child: Icon(
                  Icons.question_mark_outlined,
                  color: gradientColor1,
                  size: 50,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              QuizAppHeadingText(),
              CountDownTimer(
                timerDuration: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
