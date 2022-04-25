import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  const Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text('A'),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue.shade400),
        ),
      ),
    );
  }
}
