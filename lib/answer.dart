import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function select;
  final String answer;

  Answer(this.select, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        padding: EdgeInsets.only(right: 110, left: 110),
        child: Text(answer),
        elevation: 10,
        color: Colors.orange,
        onPressed: select,
      ),
    );
  }
}
