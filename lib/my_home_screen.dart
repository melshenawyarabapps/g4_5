import 'package:first_12/answers.dart';
import 'package:first_12/my_provider.dart';
import 'package:first_12/question.dart';
import 'package:first_12/result.dart';
import 'package:first_12/stsrt_quiz.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<MyProvider>(
          builder: (ctx, provider, _) {
            return Column(
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
                if (provider.index == -1) StartQuiz(),
                if (provider.index >= 0 &&
                    provider.index < provider.questions.length)
                  Question(),
                if (provider.index >= 0 &&
                    provider.index < provider.questions.length)
                  Answers(),
                if (provider.index == provider.questions.length) Result(),
              ],
            );
          },
        ),
      ),
    );
  }
}
