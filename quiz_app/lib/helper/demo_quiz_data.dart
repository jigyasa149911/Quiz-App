import 'package:quiz_app/model/quiz_model.dart';

List<QuizModel> quizQuestionsList = [
  // q1
  QuizModel(options: [
    OptionClass(
        isCorrect: false,
        isTapped: false,
        optionContent:
            "A. Flutter is an open-source backend development framework"),
    OptionClass(
        isCorrect: true,
        isTapped: false,
        optionContent: "B. Flutter is an open-source UI toolkit"),
    OptionClass(
        isCorrect: false,
        isTapped: false,
        optionContent:
            "C. Flutter is an open-source programming language for cross-platform applications"),
    OptionClass(
        isCorrect: false,
        isTapped: false,
        optionContent: "D. Flutters is a DBMS toolkit")
  ], question: "What is Flutter?"),
  // q2
  QuizModel(
      options: [
        OptionClass(
            isCorrect: false, isTapped: false, optionContent: "A. Facebook"),
        OptionClass(
            isCorrect: false, isTapped: false, optionContent: "B. Microsoft"),
        OptionClass(
            isCorrect: true, isTapped: false, optionContent: "C. Google"),
        OptionClass(
            isCorrect: false, isTapped: false, optionContent: "D. Oracle")
      ],
      question:
          "Who developed the Flutter Framework and continues to maintain it today?"),
  //q3
  QuizModel(
      options: [
        OptionClass(
            isCorrect: false, isTapped: false, optionContent: "A. Kotlin"),
        OptionClass(isCorrect: true, isTapped: false, optionContent: "B. Dart"),
        OptionClass(
            isCorrect: false, isTapped: false, optionContent: "C. Java"),
        OptionClass(isCorrect: false, isTapped: false, optionContent: "D. Go")
      ],
      question:
          "Which programming language is used to build Flutter applications?"),
  // q4
  QuizModel(options: [
    OptionClass(isCorrect: true, isTapped: false, optionContent: "A. 2"),
    OptionClass(isCorrect: false, isTapped: false, optionContent: "B. 4"),
    OptionClass(isCorrect: false, isTapped: false, optionContent: "C. 6"),
    OptionClass(isCorrect: false, isTapped: false, optionContent: "D. 8+")
  ], question: "How many types of widgets are there in Flutter?"),
  //q5
  QuizModel(
      options: [
        OptionClass(
            isCorrect: false,
            isTapped: false,
            optionContent:
                "A. Rapid cross-platform application development and debugging tools"),
        OptionClass(
            isCorrect: false,
            isTapped: false,
            optionContent: "B. Future-proofed technologies and UI resources"),
        OptionClass(
            isCorrect: false,
            isTapped: false,
            optionContent:
                "C. Strong supporting tools for application development and launch"),
        OptionClass(
            isCorrect: true,
            isTapped: false,
            optionContent: "D. All of the above")
      ],
      question:
          "What are some key advantages of Flutter over alternate frameworks?"),
  //q6
  QuizModel(
      options: [
        OptionClass(
            isCorrect: false,
            isTapped: false,
            optionContent: "A. flutter --release"),
        OptionClass(
            isCorrect: false,
            isTapped: false,
            optionContent: "B. flutter build --release"),
        OptionClass(
            isCorrect: true,
            isTapped: false,
            optionContent: "C. flutter run --release"),
        OptionClass(
            isCorrect: false,
            isTapped: false,
            optionContent: "D. flutter run *release")
      ],
      question:
          "What command would you use to compile your Flutter app in release mode?"),
];
