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
            Row(
              children: [
                Text('Zort yeni row'),
              ],
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Cazirtt'),
            ),
          ],
        ),
      ),
    );
  }
}
