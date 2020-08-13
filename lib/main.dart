import 'package:flutter/material.dart';

// import './question.dart';
// import './answer.dart';
import './quiz.dart';
import './result.dart';

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
  ];
  var _anIndex = 0;

  void _answerQuestion() {
    if (_anIndex < _questions.length) {}
    setState(() {
      _anIndex = _anIndex + 1;
      // _anIndex >= _questions.length - 1 ? _anIndex = 0 : _anIndex + 1;
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
        body: _anIndex < _questions.length
            ? Quiz(
                anIndex: _anIndex,
                answerQuestion: _answerQuestion,
                questions: _questions
                )
            : Result(),
      ),
    );
  }
}
