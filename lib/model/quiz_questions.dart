
class QuizQuestions {
  const QuizQuestions(this.questions , this.options);

  final String questions;
  final List<String> options;

  List<String> shuffleListOfAnswer() {
    final shuffleList = List.of(options);
    shuffleList.shuffle();
    return shuffleList;
  }

}