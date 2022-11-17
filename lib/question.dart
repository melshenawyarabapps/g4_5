import 'package:first_12/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Question extends StatelessWidget {
  const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(
      builder: (context,provider,_) {
        return Text(
          '${provider.questions[provider.index]}',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        );
      }
    );
  }
}
