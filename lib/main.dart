import 'package:flutter/material.dart';
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
  var question = ["What's your favorites movies?", "What 's your dream?"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First Title"),
        ),
        body: Column(
          children: [
            Question(question[0]),
            TextButton(onPressed: () {}, child: Text("Anwser 1")),
            TextButton(onPressed: () {}, child: Text("Anwser 2")),

            OutlinedButton(onPressed: () {}, child: Text("Anwser 3"))
          ],
        ),
      ),
    );
  }
}
