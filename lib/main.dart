// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dice',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
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
  int lefDiceNum = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                print('dice right pressed = $lefDiceNum');
                // sateState method used to update or run the build method again and update it with new value
                setState(() {
                  lefDiceNum = 1;
                  print('dice right pressed');
                });
              },
              child: Image.asset('images/dice$lefDiceNum.png'),
            ),
          ),
          // this will help to avoid element inside the Expanded Widget to be filled inside the row, ovoid overflow inside the row
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Right Button Pressed');
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
