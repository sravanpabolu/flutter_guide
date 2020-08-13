import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  //Getter
  String get resultPhrase {
    var resultText = "Your score is ";

    if(resultScore <= 8) {
      resultText = "You are awesome & innocent";
    } else if (resultScore <= 12) {
      resultText = "Pretty likable";
    } else if (resultScore <= 16) {
      resultText = "You are strange?!";
    } else {
      resultText = "you are bad";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
