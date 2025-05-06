import "package:flutter/material.dart";
import "package:quiz_app/data/questions.dart";

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.selectedAnswers, this.resetScreen, {super.key});
  final List<String> selectedAnswers;
  final void Function() resetScreen;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answer": selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((answer) {
      return answer['user_answer'] == answer['correct_answer'];
    }).length;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You answered $numCorrectQuestions out of $numTotalQuestions questions",
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 350,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...summaryData.map((answer) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "${(answer['question_index'] as int) + 1}.",
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  answer['question'] as String,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Your answer:",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            answer['user_answer'] as String,
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Correct answer:",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            answer['correct_answer'] as String,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    resetScreen();
                  },
                  icon: const Icon(Icons.restart_alt)),
              const Text(
                "restart Quiz!",
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
