import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  var index = 0;
  void addIndex(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      index += 1;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[index];

    return Center(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            textAlign: TextAlign.center,
            currentQuestion.text,
            style: GoogleFonts.tiltNeon(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffeledAnswer().map((answer) => ElevatedButton(
              onPressed: () {
                addIndex(answer);
              },
              child: Text(
                answer,
                textAlign: TextAlign.center,
              ))),
        ],
      ),
    ));
  }
}
