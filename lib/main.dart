import 'package:flutter/material.dart';
import 'package:new1/answer.dart';
import 'package:new1/question.dart';
import 'package:new1/quiz.dart';
import 'package:new1/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What 's your dream?",
      "answer": ['Engineer', "Lawyer", "Doctor"]
    },
    {
      "questionText": "What's your favorites movies?",
      "answer": ["Superman", "Never Back Down"]
    },
    {
      "questionText": "What's your favorites football club?",
      "answer": ["Chelsea", "Liverpool", "Real Madrid"]
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');

    } else {
      print("No more questions");
      // _questionIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("First Title"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(),
      ),
    );
  }
}
