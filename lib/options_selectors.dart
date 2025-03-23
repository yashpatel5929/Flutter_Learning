import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OptionsSelector extends StatelessWidget {

  const OptionsSelector({super.key , required this.optionsForAnswer , required this.onOptionSelection});

  final String optionsForAnswer;
  final void Function() onOptionSelection;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onOptionSelection,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 40,
            ),
          backgroundColor: const Color.fromARGB(255, 33, 1, 95),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(optionsForAnswer , textAlign: TextAlign.center,));
  }
}
