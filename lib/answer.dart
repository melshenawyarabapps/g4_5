import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  Answer({
    Key? key,
    required this.answer,
    required this.fun
  }) : super(key: key);

  String answer;

  var fun;

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.fun();
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          color: Colors.deepOrange,
        ),
        child: Text(
          '${widget.answer}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
