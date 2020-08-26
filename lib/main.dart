import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  static const _questions = [
    {
      'questionText': 'What \'s your favorite animals?',
      'answer': ['Dog', 'Cat', 'Elephant']
    },
    {
      'questionText': 'What \'s your favorite sports?',
      'answer': ['Football', 'Basketball', 'Floorball']
    },
    {
      'questionText': 'What \'s your favorite programming language?',
      'answer': ['Python', 'Java', 'Dart']
    },
  ];
  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter playground'),
        ),
        body: _questionIndex < _questions.length ? Quiz(questions: _questions,questionIndex: _questionIndex,answerQuestion: _answerQuestion) 
        : Result(),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
