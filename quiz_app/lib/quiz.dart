import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = "start-screen";
  List<String> selectedAnswers = [];

  void chooseAnswer(answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "results-screen";
      });
    }
  }

  void resetScreen() {
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "start-screen";
        selectedAnswers = [];
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  @override
  Widget build(context) {
    print('selected Answer $selectedAnswers');
    Widget screenWidget;

    if (activeScreen == "start-screen") {
      screenWidget = StartScreen(switchScreen);
    } else if (activeScreen == "question-screen") {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    } else {
      screenWidget = ResultScreen(selectedAnswers, resetScreen);
      ;
    }
    return MaterialApp(
      home: Scaffold(
          body: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 47, 17, 74),
                  Color.fromARGB(255, 33, 27, 41)
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: screenWidget)),
    );
  }
}
