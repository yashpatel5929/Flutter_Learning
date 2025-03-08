

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller> {
 var rollDiceNumber = 2;
  void rollDice() {
    setState(() {
      rollDiceNumber = randomizer.nextInt(6) + 1;
    });
  }
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/diceimages/dice-$rollDiceNumber.png' ,width: 200),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          onPressed: rollDice,
          child: Text('roll dice'),
        )
      ],


    );

  }

}