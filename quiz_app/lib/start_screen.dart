import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(53, 30, 182, 193),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: () => {startQuiz()},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.cyan),
            icon: const Icon(Icons.accessible_forward_sharp),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
