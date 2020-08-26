import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }
  @override
  Widget build(BuildContext context) {
    var questions = [{
      'questionText': 'What \'s your favorite animals?',
      'answer': ['Dog', 'Cat', 'Elephant']
    }, {
      'questionText': 'What \'s your favorite sports?',
      'answer': ['Football', 'Basketball', 'Floorball']
    }, {
      'questionText': 'What \'s your favorite programming language?',
      'answer': ['Python', 'Java', 'Dart']
    },
    ];
    // TODO: implement build
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter playground'),
      ),
      body: Column(children: [
        Question(questions[_questionIndex]['questionText']),
        ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
          return Answer(_answerQuestion, answer);
        }).toList()
      ]),
      
    ), );
  }
}

void main() {
  runApp(MyApp());    
}