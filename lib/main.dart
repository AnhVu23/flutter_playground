import 'package:flutter/material.dart';

import './question.dart';
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
    List<String> questions = [
      'First question',
      'secondQuestion',
      'third question'
    ];
    // TODO: implement build
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter playground'),
      ),
      body: Column(children: [
        Question(questions.elementAt(_questionIndex)),
        RaisedButton(child: Text('1'), onPressed: _answerQuestion,),
        RaisedButton(child: Text('2'), onPressed: _answerQuestion,),
        RaisedButton(child: Text('3'), onPressed: _answerQuestion,),
      ]),
      
    ), );
  }
}

void main() {
  runApp(MyApp());    
}