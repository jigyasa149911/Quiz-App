import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';

class QuestionProgressIndicator extends StatefulWidget {
  final int questionNumber;
  const QuestionProgressIndicator({required this.questionNumber, super.key});

  @override
  State<QuestionProgressIndicator> createState() =>
      _QuestionProgressIndicatorState();
}

class _QuestionProgressIndicatorState extends State<QuestionProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        children: [
          Container(
            height: 10,
            width: (MediaQuery.of(context).size.width),
            decoration: BoxDecoration(
                color: white, borderRadius: BorderRadius.circular(20)),
          ),
          Container(
            height: 10,
            alignment: Alignment.centerRight,
            width:
                ((MediaQuery.of(context).size.width) * widget.questionNumber) /
                    6,
            decoration: BoxDecoration(
                color: green, borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
    );
  }
}
