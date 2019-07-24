import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;

  Result(this.resultScore, this.reset);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are Lucky!';
    } else if (resultScore <= 15) {
      resultText = 'I like you';
    } else {
      resultText = 'You are BAD';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(120),
                child: FlatButton(
                  color: Colors.orange,
                  child: Text('Restart Quiz!'),
                  onPressed: reset,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
