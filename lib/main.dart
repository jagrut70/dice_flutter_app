import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.purple[900],
          appBar: AppBar(
            title: new Center(
              child: Text(
                'Dicee',
                style: TextStyle(
                  fontFamily: 'BigSpace',
                  letterSpacing: 0.5,
                  fontSize: 26.0,
                ),
              ),
            ),
            backgroundColor: Colors.purple[800],
          ),
          body: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 2;

  void dicechange() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  dicechange();
                },
                child: Image.asset('images/dice$leftdicenumber.png'),
              ),
            ),
            Expanded(
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  dicechange();
                },
                child: Image.asset('images/dice$rightdicenumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
