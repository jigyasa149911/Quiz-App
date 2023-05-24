import 'package:flutter/material.dart';
import 'package:quiz_app/View/screens/home_screen.dart';
import 'package:quiz_app/View/screens/quiz_screen.dart';
import 'package:quiz_app/View/screens/score_screen.dart';
import 'package:quiz_app/constants/routes.dart';
import 'package:quiz_app/model/quiz_screen_argument_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        quizScreenRoute: (context) => QuizScreen(ModalRoute.of(context)!
            .settings
            .arguments as QuizScreenArgumentModel),
        finalScoreScreenRoute: (context) => const FinalScoreScreen()
      },
    );
  }
}
