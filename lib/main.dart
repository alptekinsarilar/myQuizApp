import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void action() {
    print("hey dostum butona BAStin zort");
  }

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
            Row(
              children: [
                Text('Zort yeni row'),
              ],
            ),
            ElevatedButton(
              onPressed: action,
              child: Text('Cazirtt'),
            ),
            ElevatedButton(
              onPressed: action,
              child: Text('Cozurtt'),
            ),
            ElevatedButton(
              child: Text('zart'),
              onPressed: () {
                print('zart is chosen');
              },
            ),
            ElevatedButton(
              child: Text('zuurrt'),
              onPressed: () => print('zuurrt is chosen'),
            ),
          ],
        ),
      ),
    );
  }
}
