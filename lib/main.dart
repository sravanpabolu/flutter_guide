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
      'answers': [
        {'text': 'blue', 'score': 10},
        {'text': 'red', 'score': 8},
        {'text': 'green', 'score': 5},
        {'text': 'black', 'score': 3},
        {'text': 'white', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Tiger', 'score': 10},
        {'text': 'Bengal Tiger', 'score': 8},
        {'text': 'Black Panther', 'score': 5},
        {'text': 'Lion', 'score': 3},
        {'text': 'Cheetah', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite vehicle?',
      'answers': [
        {'text': 'Maruti Swift', 'score': 10},
        {'text': 'Honda City', 'score': 8},
        {'text': 'Hundai i20', 'score': 5},
        {'text': 'Tata Tiago', 'score': 3},
        {'text': 'Mahindra Xylo', 'score': 1},
      ],
    },
  ];
  var _anIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _anIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
