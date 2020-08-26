import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex++;
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
        Text(questions.elementAt(questionIndex)),
        RaisedButton(child: Text('1'), onPressed: answerQuestion,),
        RaisedButton(child: Text('2'), onPressed: answerQuestion,),
        RaisedButton(child: Text('3'), onPressed: answerQuestion,),
      ]),
      
    ), );
  }
  }

void main() {
  runApp(MyApp());    
}