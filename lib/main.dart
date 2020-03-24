import "dart:math";

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 5;
  void changeDiceface() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FlatButton(
        onPressed: () {
          changeDiceface();
        },
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
              Expanded(
                flex: 1,
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
