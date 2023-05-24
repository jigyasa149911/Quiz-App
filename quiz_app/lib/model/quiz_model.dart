class QuizModel {
  String question;
  List<OptionClass> options;

  QuizModel({required this.options, required this.question});
}

class OptionClass {
  String optionContent;
  bool isCorrect;
  bool isTapped;
  bool isCompleted = false;

  OptionClass(
      {required this.isCorrect,
      required this.optionContent,
      required this.isTapped});
}
