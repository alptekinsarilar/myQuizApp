import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

void main() => runApp(MyApp());

/* Whilst you can add (and also change) properties in a StatelessWidget, there's no way of telling Flutter that it should re-run build() upon such changes. */
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'Babam böyle pasta yapmayi nerden öğrendi?',
      'answers': ['Internet\'ten', 'Pazar\'dan', 'Annem\'den']
    },
    {
      'questionText': 'Flutter\'da kaliteli bir developer olabilir miyim?',
      'answers': ['InşaAllah', 'Çalişirsan evet', 'Biraz ZORt', ':DD']
    },
    {
      'questionText': 'Zirlamadan önce derin bir nefes almali miyiz?',
      'answers': ['Hayir', 'EVET BABUŞ', 'Bilmem ki']
    },
  ];
  var _questionIndex = 0;

  void answerQuestion() {
    //setState() is a "trigger" that informs Flutter that it needs to re-run build() of theWidget.
    //Since it does not have a parameter, we will callBack this function from the files which we need to access this as a VoidCallBack class which is in the material.dart package. If it would have a parameter then we should store it's pointer with a type Function.

    setState(() {
      _questionIndex++;
    });

    print('Question $_questionIndex has been answered by user.');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My QUIZ APP'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]['questionText'] as String),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) => Answer(answerQuestion, answer))
                      .toList()
                ],
              )
            : Center(
                child:Text(
                  'Başardin gardaş!',
                  style: TextStyle(fontSize: 28)
                  ),
                ),
              ),
      );
  }
}
