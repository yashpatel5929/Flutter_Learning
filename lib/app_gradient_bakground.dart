import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/dice_roller.dart';
import 'package:flutter_learning/splashscreen.dart';

class appGradientBackground extends StatelessWidget {
  const appGradientBackground({super.key});



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.purple],
            begin: Alignment.topCenter,
            end: Alignment.centerLeft)
        ),
      ),
    );
  }

}