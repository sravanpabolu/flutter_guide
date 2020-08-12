import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['blue', 'red', 'green', 'black', 'white'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Tiger', 'Bengal Tiger', 'Black Panther', 'Lion', 'Cheetah'],
    },
    {
      'questionText': 'What\'s your favorite vehicle?',
      'answers': ['Swift', 'City', 'i20'],
    },
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['blue', 'red', 'green', 'black', 'white'],
    },
  ];
  var _anIndex = 0;

  void _answerQuestion() {
    setState(() {
      _anIndex =
          _anIndex >= _questions.length - 1 ? _anIndex = 0 : _anIndex + 1;
      print("Answer chosen: $_anIndex");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Column(
          children: <Widget>[
            Question(_questions[_anIndex]['questionText']),
            ...(_questions[_anIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
