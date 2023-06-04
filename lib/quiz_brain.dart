import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('Does Vampires exist in real world?', true),
    Question('Bulls can go down stairs but not up stairs.', false),
    Question('Approximately 1 Kg is equal to 1 litre?', true),
    Question('A slug\'s blood is green.', true),
    Question('Lotus is India\'s national flower?', true),
    Question('Is it illegal to marry Kashmiri women?', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        true),
    Question(' the building is considered too sacred a place.', false),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question('water is universal solvent.', true),
    Question('Google was originally called "Backrub".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool? isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
