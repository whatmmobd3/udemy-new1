import 'package:flutter/material.dart';
import 'package:new1/answer.dart';
import 'package:new1/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = const [
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
    if (_questionIndex < questions.length) {
      print('We have more questions');
    } else {
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("First Title"),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                      questions[_questionIndex]['questionText'].toString()),
                  // Answer(_answerQuestion, "123"),
                  ...(questions[_questionIndex]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(child: Text("123")),
      ),
    );
  }
}
