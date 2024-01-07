import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[900],
        appBar: AppBar(
          title: const Text(
            'Dice',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.indigo[800],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  // const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lefDiceNum = 1;
  int rightDiceNum = 1;

  void changeDiceNum() {
    setState(() {
      lefDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                // sateState method used to update or run the build method again and update it with new value
                changeDiceNum();
              },
              child: Image.asset('images/dice$lefDiceNum.png'),
            ),
          ),
          // this will help to avoid element inside the Expanded Widget to be filled inside the row, ovoid overflow inside the row
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceNum();
              },
              child: Image.asset('images/dice$rightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
