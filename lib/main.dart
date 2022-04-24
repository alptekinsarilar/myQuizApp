import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/* Whilst you can add (and also change) properties in a StatelessWidget, there's no way of telling Flutter that it should re-run build() upon such changes. */
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
    /* setState() is a "trigger" that informs Flutter that it needs to re-run build() of the Widget. */
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
