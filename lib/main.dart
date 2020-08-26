import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter playground'),
      ),
      body: Text('This is my default text!'),
      
    ), );
  }
}

void main() {
  runApp(MyApp());    
}