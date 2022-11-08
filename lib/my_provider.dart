import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{

  List<String> question = [
    'question1',
    'question2',
    'question3',
  ];

  List<List<Map<String, dynamic>>> answers = [
    [
      {
        'text': 'answer1 1',
        'score': 10,
      },
      {
        'text': 'answer1 2',
        'score': 0,
      },
      {
        'text': 'answer1 3',
        'score': 0,
      },
      {
        'text': 'answer1 4',
        'score': 0,
      }
    ],
    [
      {
        'text': 'answer2 1',
        'score': 0,
      },
      {
        'text': 'answer2 2',
        'score': 10,
      },
      {
        'text': 'answer2 3',
        'score': 0,
      }
    ],
    [
      {
        'text': 'answer3 1',
        'score': 10,
      },
      {
        'text': 'answer3 2',
        'score': 0,
      }
    ],
  ];

  int index = 0;

  int score = 0;

  changeScore({
    required int score,
  }) {
    this.score += score;
    notifyListeners();
  }

  changeIndex() {
      index++;
      notifyListeners();
  }

  restartApp() {
    index = 0;
    score = 0;
    notifyListeners();
  }

}