import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/dice_roller.dart';

class appGradientBackground extends StatelessWidget {
  const appGradientBackground({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.lightBlue],
          begin: Alignment.topCenter,
          end: Alignment.centerLeft)
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }

}