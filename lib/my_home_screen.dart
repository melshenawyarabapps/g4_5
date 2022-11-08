import 'package:first_12/answer.dart';
import 'package:first_12/my_provider.dart';
import 'package:first_12/question.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
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
              if (Provider.of<MyProvider>(context).index <
                  Provider.of<MyProvider>(context).answers.length)
                Question(
                  question: Provider.of<MyProvider>(context).question[Provider.of<MyProvider>(context).index],
                ),
              if (Provider.of<MyProvider>(context).index < Provider.of<MyProvider>(context).answers.length)
                for (int i = 0; i < Provider.of<MyProvider>(context).answers[Provider.of<MyProvider>(context).index].length; i++)
                  Answer(
                    answer: Provider.of<MyProvider>(context).answers[Provider.of<MyProvider>(context).index][i]['text'] as String,
                    fun: () {
                      Provider.of<MyProvider>(context,listen: false).changeScore(
                        score: Provider.of<MyProvider>(context,listen: false).answers[Provider.of<MyProvider>(context,listen: false).index][i]['score'],
                      );
                      Provider.of<MyProvider>(context,listen: false).changeIndex();
                    },
                  ),
              if (Provider.of<MyProvider>(context).index == Provider.of<MyProvider>(context).answers.length) Text('Your score is : ${Provider.of<MyProvider>(context).score}'),
              if (Provider.of<MyProvider>(context).index == Provider.of<MyProvider>(context).answers.length)
                Answer(
                  answer: 'Restart',
                  fun: () {
                    Provider.of<MyProvider>(context,listen: false).restartApp();
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/*

Provider.of<MyProvider>(context).

 */
