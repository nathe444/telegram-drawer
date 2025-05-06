class QuizQuestions {
  const QuizQuestions(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffeledAnswer() {
    final shuffeledList = List.of(answers);
    shuffeledList.shuffle();
    return shuffeledList;
  }
}
