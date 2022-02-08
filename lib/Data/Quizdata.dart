// ignore_for_file: non_constant_identifier_names, prefer_final_fields

import 'package:quizapp/Model/QuizBrain.dart';

class Quizdata {
  int _StartQuestion = 0;
  List<Quizbrain> _Questions = [
    Quizbrain(
      question:
          'Waxaad sheegtaa magaca Malaga suurta afuufay oo kamid ah mallaigta? \n \nWaa Malaga suurta afuufaya waxaa la yiraahdaa Israa’fii ',
      answer: true,
    ),
    Quizbrain(
      question:
          'Waxaad sheegtaa geedka ka baxa Jahanama bartankeeda \n \nwaxaa la yidhaahdaa Zetun',
      answer: false,
    ),
    Quizbrain(
      question:
          'Waxaad sheegtaa suuradii sababta u ahayd inuu soo islaamo Cumar binu khadab? \n \n \nwaxay ahayd suuradu Daahaa.',
      answer: true,
    ),
  ];
  void nextQuestion() {
    if (_StartQuestion < _Questions.length - 1) {
      _StartQuestion++;
    }
  }

  String getQuestion() {
    return _Questions[_StartQuestion].question;
  }

  bool answer() => _Questions[_StartQuestion].answer;
  bool isFinished() {
    if (_StartQuestion >= _Questions.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _StartQuestion = 0;
  }
}
