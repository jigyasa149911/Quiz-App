// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:quiz_app/constants/routes.dart';
import 'package:quiz_app/model/quiz_screen_argument_model.dart';

import '../../constants/color_constants.dart';

class CountDownTimer extends StatefulWidget {
  final int timerDuration;
  const CountDownTimer({required this.timerDuration, super.key});
  @override
  State<CountDownTimer> createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer>
    with TickerProviderStateMixin {
  AnimationController? controller;

  String get timerString {
    Duration duration = controller!.duration! * controller!.value;
    return (duration.inSeconds % 60).toString();
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.timerDuration),
    );

    // To Navigate after timer is stopped
    Timer(Duration(seconds: widget.timerDuration), () {
      Navigator.pushReplacementNamed(context, quizScreenRoute,
          arguments: QuizScreenArgumentModel(questionNumber: 1, totalScore: 0));
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!controller!.isAnimating) {
      controller!
          .reverse(from: controller!.value == 0.0 ? 1.0 : controller!.value);
    }

    return Container(
      alignment: Alignment.center,
      height: 400,
      child: AnimatedBuilder(
          animation: controller!,
          builder: (context, child) {
            return Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Align(
                          alignment: FractionalOffset.center,
                          child: AspectRatio(
                            aspectRatio: 1.0,
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: CustomPaint(
                                      painter: CustomTimerPainter(
                                    animation: controller!,
                                    backgroundColor: white,
                                    color: buttonColor,
                                  )),
                                ),
                                Align(
                                  alignment: FractionalOffset.center,
                                  child: Text(
                                    timerString,
                                    style: TextStyle(
                                        fontSize: 40.0,
                                        color: buttonColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
}

class CustomTimerPainter extends CustomPainter {
  CustomTimerPainter({
    required this.animation,
    required this.backgroundColor,
    required this.color,
  }) : super(repaint: animation);

  final Animation<double> animation;
  final Color backgroundColor, color;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..strokeWidth = 10.0
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(size.center(Offset.zero), size.width / 2.0, paint);
    paint.color = color;
    double progress = (1.0 - animation.value) * 2 * math.pi;
    canvas.drawArc(Offset.zero & size, math.pi * 1.5, -progress, false, paint);
  }

  @override
  bool shouldRepaint(CustomTimerPainter old) {
    return animation.value != old.animation.value ||
        color != old.color ||
        backgroundColor != old.backgroundColor;
  }
}
