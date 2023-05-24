// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/View/widgets/quiz_app_heading_text_widget.dart';
import 'package:quiz_app/View/widgets/restart_button.dart';
import 'package:quiz_app/helper/linear_gardient.dart';

import '../../constants/color_constants.dart';
import '../../helper/app_state_helper.dart';

class FinalScoreScreen extends StatefulWidget {
  const FinalScoreScreen({super.key});

  @override
  State<FinalScoreScreen> createState() => _FinalScoreScreenState();
}

class _FinalScoreScreenState extends State<FinalScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(gradient: commonLinearGradient),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            QuizAppHeadingText(),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.symmetric(vertical: 50),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: white, spreadRadius: 10, blurRadius: 10)
                  ],
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/6250995/pexels-photo-6250995.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                      fit: BoxFit.cover)),
            ),
            Text(
              "Your final score",
              style: TextStyle(
                  color: white, fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "${AppState.finalScore}",
                  style: TextStyle(
                      color: AppState.finalScore <= 2 ? red : green,
                      fontWeight: FontWeight.bold,
                      fontSize: 32)),
              TextSpan(
                  text: " / 6",
                  style: TextStyle(
                      color: white, fontWeight: FontWeight.bold, fontSize: 32))
            ])),
            RestartButton()
          ],
        ),
      ),
    );
  }
}
