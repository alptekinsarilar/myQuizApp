import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {
  late List<String> questions;
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      if(questionIndex < questions.length-1)
        questionIndex++;  
    });
    
    print('Question $questionIndex has been answered by user.');
  }

  @override
  Widget build(BuildContext context) {
    questions = [
      'Babam böyle pasta yapmayi nerden öğrendi?',
      'Flutter\'da kaliteli bir developer olabilir miyim?',
      'Zirlamadan önce derin bir nefes almali miyiz?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My QUIZ APP'),
        ),
        body: Column(
          children: [
            Text(questions.elementAt(questionIndex)),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('A'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('B'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('C'),
            ),
          ],
        ),
      ),
    );
  }
}
