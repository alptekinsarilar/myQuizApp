import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Başlik ZORT'),
        ),
        body: Column(
          children: [
            Text("The question"),
            RaisedButton(
              onPressed: null,
              child: Text('Yukselen buton 1 zort'),
              hoverColor: Color.fromARGB(174, 14, 242, 128),
              color: Color.fromARGB(174, 14, 242, 128),
              focusColor:  Color.fromARGB(174, 14, 242, 128),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Yukselen buton 2 zort'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Yukselen buton 3 zort'),
            ),
          ],
        ),
      ),
    );
  }
}
