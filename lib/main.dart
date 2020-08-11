import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var anIndex = 0;

  void answerQuestion() {
    setState(() {
      anIndex = anIndex>=2 ? anIndex=0 : anIndex + 1;
      print("Answer chosen: $anIndex");
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite vehicle'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[anIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Answer 2 chosen"),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print("Answer 3 chosen");
              },
            ),
          ],
        ),
      ),
    );
  }
}
