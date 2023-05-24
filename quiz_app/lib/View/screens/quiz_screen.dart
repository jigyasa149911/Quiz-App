// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/View/widgets/question_progress_indicator.dart';
import 'package:quiz_app/View/widgets/submit_or_next_button.dart';
import 'package:quiz_app/constants/color_constants.dart';
import 'package:quiz_app/helper/app_state_helper.dart';
import 'package:quiz_app/helper/linear_gardient.dart';
import 'package:quiz_app/model/quiz_screen_argument_model.dart';

import '../../helper/demo_quiz_data.dart';

class QuizScreen extends StatefulWidget {
  final QuizScreenArgumentModel quizScreenArgumentModel;
  const QuizScreen(this.quizScreenArgumentModel, {super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  bool isOptionTapped = false;
  int? tappedIndex;
  bool? isCorrect;
  List<bool> isOptionIndexTapped = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      key: UniqueKey(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Color(0xFF00264D),
          centerTitle: true,
          leadingWidth: 100,
          leading: Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: white, width: 4),
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 166, 192, 214)),
              child: Text(
                "${widget.quizScreenArgumentModel.questionNumber}/6",
                style: TextStyle(
                    color: green, fontSize: 20, fontWeight: FontWeight.bold),
              )),
          title: Text(
            "Quiz App",
            style: TextStyle(
                color: white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(gradient: commonLinearGradient),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionProgressIndicator(
                    questionNumber:
                        widget.quizScreenArgumentModel.questionNumber),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Q#${widget.quizScreenArgumentModel.questionNumber} ${quizQuestionsList[widget.quizScreenArgumentModel.questionNumber - 1].question}",
                    style: TextStyle(
                        color: white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: transparent),
                  child: ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            if (isOptionTapped == false) {
                              setState(() {
                                isOptionTapped = true;

                                isOptionIndexTapped[index] = true;
                              });

                              if (quizQuestionsList[widget
                                          .quizScreenArgumentModel
                                          .questionNumber -
                                      1]
                                  .options[index]
                                  .isCorrect) {
                                AppState.finalScore = widget
                                    .quizScreenArgumentModel.totalScore += 1;
                              }
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.all(16),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: !isOptionIndexTapped[index]
                                  ? white
                                  : quizQuestionsList[widget
                                                      .quizScreenArgumentModel
                                                      .questionNumber -
                                                  1]
                                              .options[index]
                                              .isCorrect &&
                                          isOptionIndexTapped[index] == true
                                      ? green
                                      : red,
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: Text(
                                    quizQuestionsList[widget
                                                .quizScreenArgumentModel
                                                .questionNumber -
                                            1]
                                        .options[index]
                                        .optionContent,
                                    style: TextStyle(
                                        color: gradientColor1,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),

                // button
                NextOrSubmitButton(
                    isOptionTapped: isOptionTapped,
                    questionNumber:
                        widget.quizScreenArgumentModel.questionNumber),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
