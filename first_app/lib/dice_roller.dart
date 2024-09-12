import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key}) {}

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 2;

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset('assets/images/dice-$diceRoll.png', width: 200),
      const SizedBox(height: 20),
      TextButton(
        onPressed: () {
          setState(() {
            diceRoll = randomizer.nextInt(6) + 1;
          });
        },
        style: TextButton.styleFrom(
            //
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28)),
        child: const Text('Roll Dice'),
      )
    ]);
  }
}
