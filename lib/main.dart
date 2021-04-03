import 'package:flutter/material.dart';
import 'dart:math';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  Widget changeDice(int diceNumber) {
    return Expanded(
      child: TextButton(
        child: Image.asset('images/dice$diceNumber.png'),
        onPressed: () {
          setState(() {
            leftDiceNumber = Random().nextInt(6) + 1;
            rightDiceNumber = Random().nextInt(6) + 1;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          changeDice(leftDiceNumber),
          changeDice(rightDiceNumber),
        ],
      ),
    );
  }
}
