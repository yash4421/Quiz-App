import 'questions.dart';

class Quizbrain {
  int _yourscore = 0;
  int _questionnumber = 0;
  List<Question> _questionbank = [
    Question(
        q: 'Amartya sen was awarded the nobel prize for his contribution to Welfare Economics',
        a: true),
    Question(
        q: 'The Headquarters of the Southern Naval Command of the India Navy is located at Thiruvananthapuram.',
        a: false),
    Question(
        q: 'William Hewlett and David Packard set up a small company called apple.',
        a: false),
    Question(
        q: 'Earth Rotation is also called annual motion of the earth?',
        a: false),
    Question(
        q: 'Sachin Tendulkar has not played a single International T20 match for India.',
        a: false),
    Question(
        q: 'There are 4 sessions of the Parliament each year: Spring, Summer, Autumn and Winter.',
        a: false),
    Question(
        q: 'The Captain Roop Singh stadium is named after a former Indian cricketer.',
        a: false),
    Question(q: 'The Mahabharata is a part of The Bhagavad Gita.', a: false),
    Question(
        q: 'The National Security Guards are also known as Black Cat Commandos due to their uniforms.',
        a: true),
    Question(q: 'The Census in India occur after every 8 years', a: false),
    Question(q: 'Kuala Lumpur hosted the Commonwealth Game in 2010?', a: false),
  ];
  void nextquestion() {
    if (_questionnumber < _questionbank.length - 1) {
      _questionnumber++;
    }
  }

  String getquestiontext() {
    return _questionbank[_questionnumber].questiontext;
  }

  bool getcorrectans() {
    return _questionbank[_questionnumber].questionanswer;
  }

  bool isfinished() {
    if (_questionnumber >= _questionbank.length - 1) {
      print('now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionnumber = 0;
  }
}
