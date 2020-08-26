import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;
  Question(this._questionText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text(
      _questionText, 
      style: TextStyle(fontSize: 16,fontFamily: 'roboto',),
      textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(20)
      );
  }
}