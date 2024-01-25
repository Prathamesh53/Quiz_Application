// class banaya (bluprint of questions)
class QuizQuestion {
  QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;
  List<String> getshufflelist() {
    final shuffledlist = answers;
    shuffledlist.shuffle();
    return shuffledlist;
  }
}
