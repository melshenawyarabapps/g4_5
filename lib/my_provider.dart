import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  int index = -1;
  int score = 0;

  List<String> questions = ['Question 1 ', 'Question 2 ', 'Question 3 '];
  List<List<Map<String, dynamic>>> answers = [
    [
      {
        'answer': 'Answer 1',
        'score': 10,
      },
      {
        'answer': 'Answer 2',
        'score': 0,
      },
      {
        'answer': 'Answer 3',
        'score': 0,
      },
      {
        'answer': 'Answer 4',
        'score': 0,
      },
    ],
    [
      {
        'answer': 'Answer 1',
        'score': 10,
      },
      {
        'answer': 'Answer 2',
        'score': 0,
      },
      {
        'answer': 'Answer 3',
        'score': 0,
      },
    ],
    [
      {
        'answer': 'Answer 1',
        'score': 10,
      },
      {
        'answer': 'Answer 2',
        'score': 0,
      },
    ],
  ];

  reStart(){
    index =0;
    score = 0;
    notifyListeners();
  }

  changeIndex() {
    index++;
    notifyListeners();
  }

  changeScore({required int score}) {
    this.score += score;
    notifyListeners();
  }
}
