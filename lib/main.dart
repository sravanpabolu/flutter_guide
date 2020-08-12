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
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite vehicle?',
      'What\'s your favorite insect?',
    ];
  var _anIndex = 0;

  void _answerQuestion() {
    setState(() {
      _anIndex = _anIndex>=_questions.length-1 ? _anIndex=0 : _anIndex + 1;
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
            Question(_questions[_anIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
