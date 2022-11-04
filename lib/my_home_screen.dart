import 'package:first_12/answer.dart';
import 'package:first_12/question.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
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
    setState(() {});
  }

  changeIndex() {
      setState(() {
        index++;
      });
  }

  restartApp() {
    index = 0;
    score = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/lamp.jpg',
                height: 120,
                width: 80,
              ),
              SizedBox(
                height: 20,
              ),
              if(index < answers.length )
              Question(
                question: question[index],
              ),
              if(index < answers.length )
              for (int i = 0; i < answers[index].length; i++)
                Answer(
                  answer: answers[index][i]['text'] as String,
                  fun: () {
                    changeScore(
                      score: answers[index][i]['score'],
                    );
                    changeIndex();
                    print(score);
                  },
                ),
              if(index == answers.length)
                Text('Your score is : $score'),
              if(index == answers.length)
                Answer(
                  answer: 'Restart',
                  fun: () {
                   restartApp();
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
